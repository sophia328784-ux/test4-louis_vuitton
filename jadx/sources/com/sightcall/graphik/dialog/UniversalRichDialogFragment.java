package com.sightcall.graphik.dialog;

import android.app.Dialog;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.batch.android.v0.a;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.graphik.R;
import defpackage.bx;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import me.saket.bettermovementmethod.BetterLinkMovementMethod;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u001bB)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "title", "", "message", "actions", "", "Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;", "<init>", "(Ljava/lang/String;Ljava/lang/String;[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;)V", "[Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;", "titleView", "Landroid/widget/TextView;", "messageView", "actionPanel", "Landroid/view/ViewGroup;", "inflater", "Landroid/view/LayoutInflater;", "onCreateView", "Landroid/view/View;", "container", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "", "onViewCreated", "view", a.d, "graphik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UniversalRichDialogFragment extends DialogFragment {
    public static final int $stable = 8;
    private ViewGroup actionPanel;
    private final Action[] actions;
    private LayoutInflater inflater;
    private final String message;
    private TextView messageView;
    private final String title;
    private TextView titleView;

    public UniversalRichDialogFragment(String str, String str2, Action[] actionArr) {
        actionArr.getClass();
        this.title = str;
        this.message = str2;
        this.actions = actionArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$onViewCreated$-Landroid-view-View-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m58xf64d23e6(UniversalRichDialogFragment universalRichDialogFragment, Action action, View view) {
        Callback.n(view);
        try {
            onViewCreated$lambda$1$0(universalRichDialogFragment, action, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    private static final void onViewCreated$lambda$1$0(UniversalRichDialogFragment universalRichDialogFragment, Action action, View view) {
        universalRichDialogFragment.dismiss();
        Function0<Unit> handler = action.getHandler();
        if (handler != null) {
            handler.mo47invoke();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        inflater.getClass();
        super.onCreateView(inflater, container, savedInstanceState);
        this.inflater = inflater;
        View viewInflate = inflater.inflate(R.layout.universal_rich_dialog_fragment, container, false);
        viewInflate.getClass();
        this.titleView = (TextView) viewInflate.findViewById(R.id.title);
        this.messageView = (TextView) viewInflate.findViewById(R.id.message);
        this.actionPanel = (ViewGroup) viewInflate.findViewById(R.id.actionPanel);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Dialog dialog = getDialog();
        dialog.getClass();
        Window window = dialog.getWindow();
        window.getClass();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.getClass();
        ((ViewGroup.LayoutParams) attributes).width = -1;
        ((ViewGroup.LayoutParams) attributes).height = -2;
        Dialog dialog2 = getDialog();
        dialog2.getClass();
        Window window2 = dialog2.getWindow();
        window2.getClass();
        window2.setAttributes(attributes);
        View view = getView();
        if (view != null) {
            view.invalidate();
        }
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        TextView textView = this.titleView;
        if (textView != null) {
            String str = this.title;
            if (str == null) {
                str = "";
            }
            textView.setText(str);
        }
        String str2 = this.message;
        if (str2 != null) {
            String strJ = StringsKt.J(str2, "\n", "<br>");
            TextView textView2 = this.messageView;
            if (textView2 != null) {
                textView2.setText(Html.fromHtml(strJ, 0));
            }
        }
        TextView textView3 = this.messageView;
        if (textView3 != null) {
            if (BetterLinkMovementMethod.f76246f == null) {
                BetterLinkMovementMethod.f76246f = new BetterLinkMovementMethod();
            }
            textView3.setMovementMethod(BetterLinkMovementMethod.f76246f);
        }
        for (Action action : this.actions) {
            LayoutInflater layoutInflater = this.inflater;
            if (layoutInflater == null) {
                Intrinsics.h("inflater");
                throw null;
            }
            View viewInflate = layoutInflater.inflate(R.layout.universal_dialog_action_button, this.actionPanel, false);
            viewInflate.getClass();
            Button button = (Button) viewInflate;
            button.setText(action.getTitle());
            button.setEnabled(action.getIsEnable());
            button.setOnClickListener(new bx(this, action, 6));
            ViewGroup viewGroup = this.actionPanel;
            if (viewGroup != null) {
                viewGroup.addView(button);
            }
        }
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\rR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/sightcall/graphik/dialog/UniversalRichDialogFragment$Action;", "", "title", "", "isEnable", "", "handler", "Lkotlin/Function0;", "", "<init>", "(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V", "getTitle", "()Ljava/lang/String;", "()Z", "getHandler", "()Lkotlin/jvm/functions/Function0;", "graphik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Action {
        public static final int $stable = 0;
        private final Function0<Unit> handler;
        private final boolean isEnable;
        private final String title;

        public /* synthetic */ Action(String str, boolean z, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? null : function0);
        }

        public final Function0<Unit> getHandler() {
            return this.handler;
        }

        public final String getTitle() {
            return this.title;
        }

        /* JADX INFO: renamed from: isEnable, reason: from getter */
        public final boolean getIsEnable() {
            return this.isEnable;
        }

        public Action(String str, boolean z, Function0<Unit> function0) {
            str.getClass();
            this.title = str;
            this.isEnable = z;
            this.handler = function0;
        }
    }
}
