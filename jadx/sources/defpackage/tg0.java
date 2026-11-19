package defpackage;

import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.ogg.OggExtractor;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import com.linecorp.linesdk.openchat.OpenChatCategory;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.exceptions.AuthorizationFailedException;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d;
import java.io.IOException;
import java.security.cert.CertPath;
import java.util.List;
import org.bouncycastle.jce.exception.ExtCertPathValidatorException;
import org.bouncycastle.jce.provider.AnnotatedException;
import org.bouncycastle.operator.RuntimeOperatorException;
import org.bouncycastle.pkcs.PKCSIOException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class tg0 implements Function, ExtractorsFactory, androidx.arch.core.util.Function, Deferred.DeferredHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80060b;

    public /* synthetic */ tg0(int i2) {
        this.f80060b = i2;
    }

    public static /* synthetic */ void c(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void d(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void h(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    public static /* synthetic */ void i(String str, Object obj, Throwable th) throws PKCSIOException {
        throw new PKCSIOException(str + obj, th);
    }

    public static /* synthetic */ void k(String str, Throwable th) throws AnnotatedException {
        throw new AnnotatedException(str, th);
    }

    public static /* synthetic */ void l(String str, Throwable th, CertPath certPath, int i2) throws ExtCertPathValidatorException {
        throw new ExtCertPathValidatorException(str, th, certPath, i2);
    }

    public static /* synthetic */ void m(Object obj) throws IOException {
        throw new IOException("Error encoding certificate: " + ((Object) obj.toString()));
    }

    public static /* synthetic */ void n(Object obj, String str) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    public static /* synthetic */ void o(String str, Object obj, Throwable th) {
        throw new RuntimeOperatorException(str + obj, th);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f80060b) {
            case 0:
                return (List) ((Observable) obj).toList().c();
            case 1:
            case 2:
            case 3:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            default:
                Log.e("PhotoMakeup", "release failed", (Throwable) obj);
                return "PhotoMakeup";
            case 4:
                OpenChatCategory openChatCategory = OpenChatInfoViewModel.n;
                return Boolean.valueOf(((String) obj).length() > 0);
            case 5:
                OpenChatCategory openChatCategory2 = OpenChatInfoViewModel.n;
                return Boolean.valueOf(((String) obj).length() > 0);
            case 14:
                Throwable th = (Throwable) obj;
                ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                if (th instanceof AuthorizationFailedException) {
                    a.r().n(((AuthorizationFailedException) th).getStatusCode(), "45619df4-1ce2-41cf-bc62-64d8c0fc00dc");
                    Log.d("PerfectLib", "[Authorization] server return error");
                    return new h(th);
                }
                if (a.r().getInt("45619df4-1ce2-41cf-bc62-64d8c0fc00dc", 0) == 200) {
                    Log.c("PerfectLib", "[Authorization] get the latest init response failed, use the previous one", th);
                    return g.f42660b;
                }
                try {
                    throw InternalErrorRetriever.a(th);
                } catch (Throwable th2) {
                    Log.d("PerfectLib", "[Authorization] network error");
                    return new h(th2);
                }
            case 15:
                ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                Log.e("PerfectLib", "SkuHandler::clearAllCompletable", (Throwable) obj);
                return g.f42660b;
            case 16:
                ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                Log.e("PerfectLib", "LookHandler::clearAllCompletable", (Throwable) obj);
                return g.f42660b;
            case 17:
                ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                Log.e("PerfectLib", "NailLookHandler::clearAllCompletable", (Throwable) obj);
                return g.f42660b;
            case 18:
                ApplyEffectParams applyEffectParams5 = PerfectLib.f39738a;
                Log.e("PerfectLib", "JewelryLookHandler::clearAllCompletable", (Throwable) obj);
                return g.f42660b;
            case 19:
                ApplyEffectParams applyEffectParams6 = PerfectLib.f39738a;
                Log.e("PerfectLib", "TutorialHandler::clearAllCompletable", (Throwable) obj);
                return g.f42660b;
            case 20:
                ApplyEffectParams applyEffectParams7 = PerfectLib.f39738a;
                return new d(Single.g((Throwable) obj), new j(new e5(5)));
            case 21:
                ApplyEffectParams applyEffectParams8 = PerfectLib.f39738a;
                Log.e("PerfectLib", "CLFlurryAgentHelper::onStop", (Throwable) obj);
                return g.f42660b;
            case 22:
                ApplyEffectParams applyEffectParams9 = PerfectLib.f39738a;
                Log.e("PerfectLib", "preload failed.", (Throwable) obj);
                return g.f42660b;
            case 23:
                ApplyEffectParams applyEffectParams10 = PerfectLib.f39738a;
                Log.e("PerfectLib", "taskDisposables::dispose", (Throwable) obj);
                return g.f42660b;
            case 24:
                ApplyEffectParams applyEffectParams11 = PerfectLib.f39738a;
                Log.e("PerfectLib", "skuHandler::release", (Throwable) obj);
                return g.f42660b;
            case 25:
                ApplyEffectParams applyEffectParams12 = PerfectLib.f39738a;
                Log.e("PerfectLib", "lookHandler::release", (Throwable) obj);
                return g.f42660b;
            case 26:
                ApplyEffectParams applyEffectParams13 = PerfectLib.f39738a;
                Log.e("PerfectLib", "TutorialHandler::release", (Throwable) obj);
                return g.f42660b;
            case 27:
                ApplyEffectParams applyEffectParams14 = PerfectLib.f39738a;
                Log.e("PerfectLib", "cleanUp", (Throwable) obj);
                return g.f42660b;
            case 28:
                ApplyEffectParams applyEffectParams15 = PerfectLib.f39738a;
                Log.e("PerfectLib", "DebugConfig::init.", (Throwable) obj);
                return g.f42660b;
        }
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void g(Provider provider) {
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public Extractor[] j() {
        return new Extractor[]{new OggExtractor()};
    }
}
