package com.sightcall.core.experiences;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.sightcall.core.consent.ConsentDialogFragment;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0016\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0082@¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/core/experiences/DeeplinkActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "showConsentDialog", "uri", "Landroid/net/Uri;", "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeeplinkActivity extends AppCompatActivity {
    public static final int $stable = 8;

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showConsentDialog(final Uri uri, Continuation<? super Unit> continuation) {
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(continuation));
        new ConsentDialogFragment(null, null, null, null, new Function0<Unit>() { // from class: com.sightcall.core.experiences.DeeplinkActivity$showConsentDialog$2$dialog$1
            public final void invoke() throws SightCallUnknownUrlException {
                Continuation<Unit> continuation2 = safeContinuation;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Unit.f71739a);
                SightCall.start$default(SightCall.INSTANCE, uri, null, 2, null);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo47invoke() throws SightCallUnknownUrlException {
                invoke();
                return Unit.f71739a;
            }
        }, 15, null).show(getSupportFragmentManager(), ConsentDialogFragment.TAG);
        Object objA = safeContinuation.a();
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if ((getIntent().getFlags() & 1048576) == 1048576) {
            String packageName = getApplicationContext().getPackageName();
            packageName.getClass();
            Intent launchIntentForPackage = getApplicationContext().getPackageManager().getLaunchIntentForPackage(packageName);
            if (launchIntentForPackage != null) {
                launchIntentForPackage.addFlags(268468224);
                startActivity(launchIntentForPackage);
            }
            finish();
            return;
        }
        Uri data = getIntent().getData();
        if (data != null) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            BuildersKt.c(GlobalScope.f74669b, MainDispatcherLoader.f75131a, null, new DeeplinkActivity$onCreate$2$1(this, data, null), 2);
        }
    }
}
