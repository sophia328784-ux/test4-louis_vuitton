package com.sightcall.core.consent;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.sightcall.core.R;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006J\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010R:\u0010\b\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u00052\u0014\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/sightcall/core/consent/ConsentViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "value", "Landroidx/lifecycle/MutableLiveData;", "Lcom/sightcall/core/consent/ConsentEnum;", "kotlin.jvm.PlatformType", "consentState", "getConsentState", "()Landroidx/lifecycle/MutableLiveData;", "setConsentVisibility", "", "newConsentState", "onPrivacyLinkClick", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConsentViewModel extends ViewModel {
    public static final int $stable = 8;
    private MutableLiveData<ConsentEnum> consentState = new MutableLiveData<>(ConsentEnum.SHOW_CONSENT_VIEW);

    public final MutableLiveData<ConsentEnum> getConsentState() {
        return this.consentState;
    }

    public final void onPrivacyLinkClick(Context context) {
        context.getClass();
        String string = context.getString(R.string.consent_privacy_policy_url);
        string.getClass();
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
    }

    public final void setConsentVisibility(ConsentEnum newConsentState) {
        newConsentState.getClass();
        if (this.consentState.getValue() != newConsentState) {
            this.consentState.postValue(newConsentState);
        }
    }
}
