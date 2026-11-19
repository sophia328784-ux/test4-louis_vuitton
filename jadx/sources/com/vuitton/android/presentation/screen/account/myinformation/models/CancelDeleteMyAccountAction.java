package com.vuitton.android.presentation.screen.account.myinformation.models;

import com.vuitton.android.designkit.ui.theme.templates.AutomationTagsAction;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/CancelDeleteMyAccountAction;", "Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CancelDeleteMyAccountAction implements AutomationTagsAction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CancelDeleteMyAccountAction f52638a = new CancelDeleteMyAccountAction();

    @Override // com.vuitton.android.designkit.ui.theme.templates.AutomationTagsAction
    public final String a() {
        return "MyInfo_cancelDeletionAccount_button";
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof CancelDeleteMyAccountAction);
    }

    public final int hashCode() {
        return 1373135964;
    }

    public final String toString() {
        return "CancelDeleteMyAccountAction";
    }
}
