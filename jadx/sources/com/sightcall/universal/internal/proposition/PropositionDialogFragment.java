package com.sightcall.universal.internal.proposition;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.graphik.R;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.internal.ui.BaseDialogFragment;
import com.sightcall.universal.internal.ui.ChangeCameraSourceDialog;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.ui.IndeterminateImageView;
import com.sightcall.universal.util.Truss;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import retrofit2.Call;

/* JADX INFO: loaded from: classes3.dex */
public class PropositionDialogFragment extends BaseDialogFragment implements SignatureView.SignatureListener {
    private static final String ARG_PROPOSITION = "proposition";
    private static final String TAG = "PropositionDialogFragment";
    private Button accept;
    private Call<?> acceptCall;
    private Call<?> cancelCall;
    private Button confirm;
    private Button deny;
    private OnPropositionDialogListener listener;
    private TextView message;
    private View messageRoot;
    private IndeterminateImageView progress;
    private Proposition proposition;
    private ImageButton reset;
    private View root;
    private Session session;
    private Call<?> signCall;
    private SignatureView signature;
    private TextView title;

    public interface OnPropositionDialogListener {
        void onPropositionDialogDismissed();

        void onPropositionDialogShown();
    }

    private CharSequence buildMessage(Context context) {
        Truss truss = new Truss();
        Proposition.KeyValuePair[] keyValuePairArr = this.proposition.fields;
        boolean z = true;
        boolean z2 = keyValuePairArr != null && keyValuePairArr.length > 0;
        if (z2) {
            boolean z3 = true;
            for (Proposition.KeyValuePair keyValuePair : keyValuePairArr) {
                if (z3) {
                    z3 = false;
                } else {
                    truss.append('\n');
                }
                truss.append(keyValuePair.key).append(": ").append(keyValuePair.value);
            }
        }
        Proposition.KeyValuePair[] keyValuePairArr2 = this.proposition.extras;
        if (keyValuePairArr2 != null && keyValuePairArr2.length > 0) {
            if (z2) {
                truss.append("\n\n");
            }
            truss.pushSpan(new ForegroundColorSpan(ContextCompat.getColor(context, R.color.universal_colorPropositionExtras))).pushSpan(new StyleSpan(1));
            for (Proposition.KeyValuePair keyValuePair2 : this.proposition.extras) {
                if (z) {
                    z = false;
                } else {
                    truss.append('\n');
                }
                truss.append(keyValuePair2.key).append(": ").append(keyValuePair2.value);
            }
            truss.popSpan().popSpan();
        }
        return truss.build();
    }

    private void cancelApiCalls() {
        Call<?> call = this.cancelCall;
        if (call != null) {
            call.cancel();
            this.cancelCall = null;
        }
        Call<?> call2 = this.acceptCall;
        if (call2 != null) {
            call2.cancel();
            this.acceptCall = null;
        }
        Call<?> call3 = this.signCall;
        if (call3 != null) {
            call3.cancel();
            this.signCall = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearProposition() {
        this.session.parameters.pendingProposition = null;
    }

    private static String createTag(Proposition proposition) {
        if (proposition == null) {
            return TAG;
        }
        return TAG + "_" + proposition.id;
    }

    private void initUi(Context context) {
        this.progress = (IndeterminateImageView) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_progress);
        this.title = (TextView) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_title);
        ImageButton imageButton = (ImageButton) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_reset);
        this.reset = imageButton;
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.sightcall.universal.internal.proposition.PropositionDialogFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback.n(view);
                try {
                    PropositionDialogFragment.this.signature.clear();
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            }
        });
        this.messageRoot = this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_message_root);
        TextView textView = (TextView) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_message);
        this.message = textView;
        textView.setText(buildMessage(context));
        this.accept = (Button) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_accept);
        if (!TextUtils.isEmpty(this.proposition.template.button)) {
            this.accept.setText(this.proposition.template.button);
        }
        this.accept.setOnClickListener(new View.OnClickListener() { // from class: com.sightcall.universal.internal.proposition.PropositionDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback.n(view);
                try {
                    PropositionDialogFragment.this.onAcceptClicked();
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            }
        });
        Button button = (Button) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_confirm);
        this.confirm = button;
        button.setOnClickListener(new View.OnClickListener() { // from class: com.sightcall.universal.internal.proposition.PropositionDialogFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback.n(view);
                try {
                    PropositionDialogFragment.this.onConfirmClicked();
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            }
        });
        Button button2 = (Button) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_deny);
        this.deny = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.sightcall.universal.internal.proposition.PropositionDialogFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback.n(view);
                try {
                    PropositionDialogFragment.this.onDenyClicked();
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            }
        });
        SignatureView signatureView = (SignatureView) this.root.findViewById(com.sightcall.universal.R.id.universal_proposition_signature);
        this.signature = signatureView;
        signatureView.addListener(this);
        this.signature.setColor(ContextCompat.getColor(context, R.color.universal_colorPropositionSignature));
    }

    private boolean isLoading() {
        return (this.acceptCall == null && this.cancelCall == null && this.signCall == null) ? false : true;
    }

    private boolean isPropositionAccepted() {
        return this.proposition.isAccepted;
    }

    private void log(String str) {
        Logger.INSTANCE.d(this + " -> " + str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAcceptClicked() {
        this.acceptCall = PropositionClient.accept(this.session, this.proposition, new PropositionClient.AcceptCallback() { // from class: com.sightcall.universal.internal.proposition.PropositionDialogFragment.6
            private void reset() {
                PropositionDialogFragment.this.acceptCall = null;
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.AcceptCallback
            public void onAcceptError() {
                reset();
                PropositionDialogFragment.this.clearProposition();
                PropositionDialogFragment.this.dismissAllowingStateLoss();
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.AcceptCallback
            public void onAcceptFailure() {
                reset();
                PropositionDialogFragment.this.updateUi();
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.AcceptCallback
            public void onAcceptSuccess() {
                reset();
                PropositionDialogFragment.this.proposition.isAccepted = true;
                boolean zBooleanValue = PropositionDialogFragment.this.proposition.template.signature.booleanValue();
                PropositionDialogFragment propositionDialogFragment = PropositionDialogFragment.this;
                if (zBooleanValue) {
                    propositionDialogFragment.updateUi();
                } else {
                    propositionDialogFragment.clearProposition();
                    PropositionDialogFragment.this.dismissAllowingStateLoss();
                }
            }
        });
        updateUi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConfirmClicked() {
        Bitmap bitmap = this.signature.getBitmap();
        this.signCall = PropositionClient.sign(this.session, this.proposition, bitmap, new PropositionClient.SignCallback() { // from class: com.sightcall.universal.internal.proposition.PropositionDialogFragment.7
            private void reset() {
                PropositionDialogFragment.this.signCall = null;
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.SignCallback
            public void onSignError() {
                reset();
                PropositionDialogFragment.this.clearProposition();
                PropositionDialogFragment.this.dismissAllowingStateLoss();
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.SignCallback
            public void onSignFailure() {
                reset();
                PropositionDialogFragment.this.updateUi();
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.SignCallback
            public void onSignSuccess() {
                reset();
                PropositionDialogFragment.this.clearProposition();
                PropositionDialogFragment.this.dismissAllowingStateLoss();
            }
        });
        bitmap.recycle();
        updateUi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDenyClicked() {
        this.cancelCall = PropositionClient.cancel(this.session, this.proposition, new PropositionClient.CancelCallback() { // from class: com.sightcall.universal.internal.proposition.PropositionDialogFragment.5
            private void reset() {
                PropositionDialogFragment.this.cancelCall = null;
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.CancelCallback
            public void onCancelError() {
                reset();
                PropositionDialogFragment.this.clearProposition();
                PropositionDialogFragment.this.dismissAllowingStateLoss();
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.CancelCallback
            public void onCancelFailure() {
                reset();
                PropositionDialogFragment.this.updateUi();
            }

            @Override // com.sightcall.universal.internal.proposition.PropositionClient.CancelCallback
            public void onCancelSuccess() {
                reset();
                PropositionDialogFragment.this.proposition.isDenied = true;
                PropositionDialogFragment.this.clearProposition();
                PropositionDialogFragment.this.dismissAllowingStateLoss();
            }
        });
        updateUi();
    }

    public static void show(FragmentManager fragmentManager, Proposition proposition) {
        FragmentTransaction fragmentTransactionD = fragmentManager.d();
        if (fragmentManager.G(createTag(proposition)) == null) {
            PropositionDialogFragment propositionDialogFragment = new PropositionDialogFragment();
            Bundle bundle = new Bundle(1);
            bundle.putParcelable(ARG_PROPOSITION, proposition);
            propositionDialogFragment.setArguments(bundle);
            fragmentTransactionD.i(0, propositionDialogFragment, createTag(proposition), 1);
        }
        fragmentTransactionD.f();
    }

    private void updatePropositionScreen() {
        int i2;
        boolean zIsLoading = isLoading();
        boolean zIsPropositionAccepted = isPropositionAccepted();
        TextView textView = this.message;
        int i3 = 4;
        boolean z = false;
        if (zIsPropositionAccepted) {
            i2 = 8;
        } else {
            i2 = zIsLoading ? 4 : 0;
        }
        textView.setVisibility(i2);
        View view = this.messageRoot;
        if (zIsPropositionAccepted) {
            i3 = 8;
        } else if (!zIsLoading) {
            i3 = 0;
        }
        view.setVisibility(i3);
        this.deny.setEnabled(!zIsLoading);
        this.accept.setVisibility(zIsPropositionAccepted ? 8 : 0);
        Button button = this.accept;
        if (!zIsLoading && !zIsPropositionAccepted) {
            z = true;
        }
        button.setEnabled(z);
    }

    private void updateSignatureScreen() {
        int i2;
        boolean zIsLoading = isLoading();
        boolean zIsPropositionAccepted = isPropositionAccepted();
        boolean zHasSignature = this.signature.hasSignature();
        SignatureView signatureView = this.signature;
        int i3 = 4;
        boolean z = false;
        if (zIsPropositionAccepted) {
            i2 = zIsLoading ? 4 : 0;
        } else {
            i2 = 8;
        }
        signatureView.setVisibility(i2);
        this.signature.setEnabled(!zIsLoading && zIsPropositionAccepted);
        this.deny.setEnabled(!zIsLoading);
        this.confirm.setVisibility(zIsPropositionAccepted ? 0 : 8);
        this.confirm.setEnabled(!zIsLoading && zIsPropositionAccepted && zHasSignature);
        ImageButton imageButton = this.reset;
        if (zIsPropositionAccepted && zHasSignature) {
            i3 = 0;
        }
        imageButton.setVisibility(i3);
        ImageButton imageButton2 = this.reset;
        if (!zIsLoading && zIsPropositionAccepted && zHasSignature) {
            z = true;
        }
        imageButton2.setEnabled(z);
        this.reset.setAlpha((!zIsLoading && zIsPropositionAccepted && zHasSignature) ? 1.0f : 0.2f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUi() {
        if (isAdded()) {
            boolean zIsLoading = isLoading();
            IndeterminateImageView indeterminateImageView = this.progress;
            if (zIsLoading) {
                indeterminateImageView.show();
            } else {
                indeterminateImageView.hide(true);
            }
            TextView textView = this.title;
            Proposition proposition = this.proposition;
            textView.setText(proposition.isAccepted ? getText(com.sightcall.universal.R.string.universal_proposition_title_signature) : proposition.template.title);
            updatePropositionScreen();
            updateSignatureScreen();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.universal.internal.ui.BaseDialogFragment
    public void onAttachToContext(Context context) {
        if (context instanceof ChangeCameraSourceDialog.OnRequestCameraSourceListener) {
            this.listener = (OnPropositionDialogListener) context;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        log("onCreate");
        Rtcc.instance().bus().register(this);
        setRetainInstance(true);
        setStyle(1, com.sightcall.universal.R.style.universal_Theme_Dialog_MinWidth);
        setCancelable(false);
        this.proposition = (Proposition) getArguments().getParcelable(ARG_PROPOSITION);
        Session session = Session.get();
        this.session = session;
        Proposition proposition = this.proposition;
        if (proposition == null || proposition.template == null || session == null) {
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        log("onCreateView");
        this.root = layoutInflater.inflate(com.sightcall.universal.R.layout.universal_dialog_proposition, viewGroup, false);
        initUi(layoutInflater.getContext());
        updateUi();
        return this.root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Rtcc.instance().bus().unregister(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.listener = null;
    }

    @Event
    public void onPropositionEvent(Proposition proposition) {
        String str = this.proposition.id;
        boolean z = str != null && str.equals(proposition.id);
        if (proposition.is(Proposition.State.CREATED) && !z) {
            cancelApiCalls();
            dismissAllowingStateLoss();
        } else if (proposition.is(Proposition.State.DELETED) && z) {
            cancelApiCalls();
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // com.sightcall.universal.internal.proposition.SignatureView.SignatureListener
    public void onSignatureClear() {
        updateSignatureScreen();
    }

    @Override // com.sightcall.universal.internal.proposition.SignatureView.SignatureListener
    public void onSignatureDraw() {
        updateSignatureScreen();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        OnPropositionDialogListener onPropositionDialogListener = this.listener;
        if (onPropositionDialogListener != null) {
            onPropositionDialogListener.onPropositionDialogShown();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        OnPropositionDialogListener onPropositionDialogListener = this.listener;
        if (onPropositionDialogListener != null) {
            onPropositionDialogListener.onPropositionDialogDismissed();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        updateUi();
    }
}
