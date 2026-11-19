package com.vuitton.android.presentation.screen.account.addressbook;

import android.content.Intent;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorActivity;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressBookDestinationsKt {
    public static final Intent a(AddressBookDestinations.ToAddressEditorPage toAddressEditorPage, FragmentActivity fragmentActivity) {
        AddressEditorActivity.Companion companion = AddressEditorActivity.r;
        boolean z = toAddressEditorPage.f52140a;
        String str = toAddressEditorPage.f52141b;
        companion.getClass();
        Intent intent = new Intent(fragmentActivity, (Class<?>) AddressEditorActivity.class);
        intent.putExtra("IS_MAIN_ADDRESS", z);
        intent.putExtra("ADDRESS_ID", str);
        return intent;
    }
}
