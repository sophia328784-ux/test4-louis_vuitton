package com.vuitton.android.presentation.screen.connectivity.views.bottomsheets;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseBottomSheet;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000f\b!\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010 \u001a\u00020\u00168\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0018\u001a\u0004\b\u001e\u0010\u001a\"\u0004\b\u001f\u0010\u001cR\"\u0010$\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0013\u001a\u0004\b\"\u0010\u0015\"\u0004\b#\u0010\u0005¨\u0006%"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseBottomSheet;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "", "layoutId", "<init>", "(I)V", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "G", "I", "P", "()I", "", "H", "Z", "Q", "()Z", "U", "(Z)V", "shouldSkipCollapsed", "R", "T", "isHideable", "J", "O", "S", "behaviorState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public abstract class BaseBottomSheet extends Hilt_BaseBottomSheet {
    public static final int K = 8;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final int layoutId;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private boolean shouldSkipCollapsed;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private boolean isHideable;

    /* JADX INFO: renamed from: J, reason: from kotlin metadata */
    private int behaviorState;

    public BaseBottomSheet(int i2) {
        this.layoutId = i2;
        setCancelable(false);
        this.behaviorState = 3;
    }

    /* JADX INFO: renamed from: O, reason: from getter */
    public int getBehaviorState() {
        return this.behaviorState;
    }

    /* JADX INFO: renamed from: P, reason: from getter */
    public final int getLayoutId() {
        return this.layoutId;
    }

    /* JADX INFO: renamed from: Q, reason: from getter */
    public boolean getShouldSkipCollapsed() {
        return this.shouldSkipCollapsed;
    }

    /* JADX INFO: renamed from: R, reason: from getter */
    public boolean getIsHideable() {
        return this.isHideable;
    }

    public void S(int i2) {
        this.behaviorState = i2;
    }

    public void T(boolean z) {
        this.isHideable = z;
    }

    public void U(boolean z) {
        this.shouldSkipCollapsed = z;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        final Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        dialogOnCreateDialog.getClass();
        dialogOnCreateDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: oc
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                BottomSheetBehavior bottomSheetBehaviorB = BottomSheetBehavior.B((FrameLayout) dialogOnCreateDialog.findViewById(R.id.design_bottom_sheet));
                BaseBottomSheet baseBottomSheet = this;
                bottomSheetBehaviorB.H(baseBottomSheet.getIsHideable());
                bottomSheetBehaviorB.K = baseBottomSheet.getShouldSkipCollapsed();
                bottomSheetBehaviorB.J(baseBottomSheet.getBehaviorState());
            }
        });
        return dialogOnCreateDialog;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        inflater.getClass();
        View viewInflate = inflater.inflate(this.layoutId, container, false);
        viewInflate.getClass();
        return viewInflate;
    }

    public BaseBottomSheet() {
        this(0, 1, null);
    }

    public /* synthetic */ BaseBottomSheet(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? -1 : i2);
    }
}
