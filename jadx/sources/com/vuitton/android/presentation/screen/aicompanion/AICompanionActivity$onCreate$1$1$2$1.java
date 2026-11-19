package com.vuitton.android.presentation.screen.aicompanion;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.widget.Toast;
import com.vuitton.android.R;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AICompanionActivity$onCreate$1$1$2$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        AICompanionActivity aICompanionActivity = (AICompanionActivity) this.receiver;
        AICompanionActivity.Companion companion = AICompanionActivity.v;
        aICompanionActivity.getClass();
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.LANGUAGE", Locale.getDefault().toLanguageTag());
        intent.putExtra("android.speech.extra.PROMPT", aICompanionActivity.getApplicationContext().getString(R.string.companion_placeholder_conversation));
        try {
            aICompanionActivity.r.a(intent);
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(aICompanionActivity.getApplicationContext(), aICompanionActivity.getApplicationContext().getString(R.string.error_generic), 0).show();
        }
        return Unit.f71739a;
    }
}
