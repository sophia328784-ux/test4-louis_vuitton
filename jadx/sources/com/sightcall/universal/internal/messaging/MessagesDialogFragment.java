package com.sightcall.universal.internal.messaging;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.universal.internal.ui.BaseDialogFragment;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.util.UiUtils;
import com.sightcall.universal.util.Utils;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;

/* JADX INFO: loaded from: classes3.dex */
public class MessagesDialogFragment extends BaseDialogFragment implements TextView.OnEditorActionListener, MessagesAdapter.OnMessageClickListener, MessagesAdapter.OnMessageLongClickListener, TextWatcher, View.OnFocusChangeListener {
    private static final String FRAGMENT_TAG = "MessagesDialogFragment";
    private MessagesAdapter adapter;
    private EditText editText;
    private LinearLayoutManager layoutManager;
    private final Messaging messaging;
    private RecyclerView recyclerView;
    private final Rtcc rtcc;
    private ImageView send;
    private final Session session;

    public MessagesDialogFragment() {
        Rtcc rtccInstance = Rtcc.instance();
        this.rtcc = rtccInstance;
        this.messaging = Messaging.from(rtccInstance, rtccInstance.call().get());
        this.session = Session.get();
    }

    private void init(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(20);
        View viewFindViewById = dialog.findViewById(R.id.icon);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesDialogFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Callback.n(view);
                    try {
                        MessagesDialogFragment.this.dismiss();
                    } finally {
                        Callback.o();
                        SensorsDataAutoTrackHelper.trackViewOnClick(view);
                    }
                }
            });
        }
        ImageView imageView = (ImageView) dialog.findViewById(com.sightcall.universal.R.id.universal_messages_send);
        this.send = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.sightcall.universal.internal.messaging.MessagesDialogFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback.n(view);
                try {
                    MessagesDialogFragment.this.sendMessage();
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            }
        });
        EditText editText = (EditText) dialog.findViewById(com.sightcall.universal.R.id.universal_messages_input);
        this.editText = editText;
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(getResources().getInteger(com.sightcall.universal.R.integer.universal_messages_max_input_length))});
        this.editText.setOnEditorActionListener(this);
        this.editText.setOnFocusChangeListener(this);
        this.editText.addTextChangedListener(this);
        this.editText.requestFocus();
        String pendingMessage = this.messaging.getPendingMessage();
        if (pendingMessage != null) {
            this.editText.setText(pendingMessage);
            EditText editText2 = this.editText;
            editText2.setSelection(editText2.getText().length());
        }
        afterTextChanged(this.editText.getText());
        this.adapter = new MessagesAdapter();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        this.layoutManager = linearLayoutManager;
        linearLayoutManager.n1(true);
        RecyclerView recyclerView = (RecyclerView) dialog.findViewById(com.sightcall.universal.R.id.universal_messages_recyclerview);
        this.recyclerView = recyclerView;
        recyclerView.setLayoutManager(this.layoutManager);
        this.recyclerView.setAdapter(this.adapter);
        this.adapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.sightcall.universal.internal.messaging.MessagesDialogFragment.3
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i2, int i3) {
                if (MessagesDialogFragment.this.layoutManager.W0() == -1) {
                    return;
                }
                MessagesDialogFragment.this.recyclerView.scrollToPosition(MessagesDialogFragment.this.adapter.getItemCount() - 1);
            }
        });
        this.adapter.setOnMessageClickListener(this);
        this.adapter.setOnMessageLongClickListener(this);
        this.adapter.addMessages(this.messaging.get());
    }

    public static boolean isShown(FragmentManager fragmentManager) {
        Dialog dialog;
        Fragment fragmentG = fragmentManager.G(FRAGMENT_TAG);
        if ((fragmentG instanceof MessagesDialogFragment) && (dialog = ((MessagesDialogFragment) fragmentG).getDialog()) != null && dialog.isShowing()) {
            return true;
        }
        return fragmentG != null && fragmentG.isResumed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage() {
        Editable text = this.editText.getText();
        if (TextUtils.isEmpty(text)) {
            return;
        }
        this.adapter.addMessage(this.messaging.send(text.toString(), this.session));
        text.clear();
    }

    public static void show(FragmentManager fragmentManager) {
        FragmentTransaction fragmentTransactionD = fragmentManager.d();
        String str = FRAGMENT_TAG;
        if (fragmentManager.G(str) == null) {
            fragmentTransactionD.i(0, new MessagesDialogFragment(), str, 1);
        }
        fragmentTransactionD.f();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.send.setEnabled(!TextUtils.isEmpty(editable));
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // com.sightcall.universal.internal.ui.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rtcc.bus().register(this);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.f(com.sightcall.universal.R.string.universal_messages_dialog_title);
        int i2 = com.sightcall.universal.R.drawable.universal_ic_close_black_24dp;
        AlertController.AlertParams alertParams = builder.f810a;
        alertParams.f798c = i2;
        int i3 = com.sightcall.universal.R.layout.universal_dialog_messages;
        alertParams.t = null;
        alertParams.s = i3;
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        init(alertDialogCreate);
        return alertDialogCreate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.rtcc.bus().unregister(this);
        EditText editText = this.editText;
        Editable text = editText != null ? editText.getText() : null;
        this.messaging.setPending(TextUtils.isEmpty(text) ? null : text.toString());
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (4 != i2) {
            return false;
        }
        sendMessage();
        return true;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(final View view, boolean z) {
        if (z) {
            view.post(new Runnable() { // from class: com.sightcall.universal.internal.messaging.MessagesDialogFragment.4
                @Override // java.lang.Runnable
                public void run() {
                    UiUtils.showSoftKeyboard(view);
                }
            });
        }
    }

    @Override // com.sightcall.universal.internal.messaging.MessagesAdapter.OnMessageClickListener
    public void onMessageClick(Message message, MessagesAdapter.MessageViewHolder messageViewHolder) {
    }

    @Override // com.sightcall.universal.internal.messaging.MessagesAdapter.OnMessageLongClickListener
    public boolean onMessageLongClick(Message message, MessagesAdapter.MessageViewHolder messageViewHolder) {
        Context applicationContext = getActivity().getApplicationContext();
        Utils.copyToClipboard(applicationContext, message.content());
        Toast.makeText(applicationContext, com.sightcall.universal.R.string.universal_messages_copied_to_clipboard, 0).show();
        return true;
    }

    @Event
    public void onMessageReceivedEvent(Message.Incoming incoming) {
        incoming.read(true);
        this.adapter.addMessage(incoming);
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
