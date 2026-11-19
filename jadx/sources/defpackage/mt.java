package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.hardware.camera2.params.DynamicRangeProfiles;
import android.view.View;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import coil3.EventListener;
import coil3.EventListener$Companion$NONE$1;
import com.google.android.datatransport.Transformer;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Lazy;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.sessions.EventGDTLogger;
import com.google.firebase.sessions.SessionEvent;
import com.google.firebase.sessions.SessionEvents;
import com.sightcall.advancedannotations.domain.settings.FetchAnnotationSettings;
import com.sightcall.livetranslation.domain.FetchLanguages;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.text.Charsets;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.eac.EACIOException;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mt implements DrmSessionManager.DrmSessionReference, Transformer, EventListener.Factory, ComponentFactory, ListenerSet.Event, OnApplyWindowInsetsListener, Continuation, Function, Predicate, LibraryVersionComponent.VersionExtractor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76361b;

    public /* synthetic */ mt(EventGDTLogger eventGDTLogger) {
        this.f76361b = 8;
    }

    public static /* bridge */ /* synthetic */ DynamicRangeProfiles a(Object obj) {
        return (DynamicRangeProfiles) obj;
    }

    public static /* synthetic */ void e(int i2, String str) throws IOException {
        throw new IOException(str + i2);
    }

    public static /* synthetic */ void f(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void g(Object obj, Throwable th) throws EACIOException {
        throw new EACIOException("malformed data: " + obj, th);
    }

    public static /* synthetic */ void i(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static /* synthetic */ void j(String str, Object obj, Object obj2) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void k(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void l(Object obj, String str) throws FileNotFoundException {
        throw new FileNotFoundException(str + obj);
    }

    public static /* synthetic */ void m(String str) {
        throw new InvalidParameterException(str);
    }

    public static /* synthetic */ void n(String str) {
        throw new OutputLengthException(str);
    }

    @Override // com.google.android.datatransport.Transformer, com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        switch (this.f76361b) {
            case 8:
                SessionEvent sessionEvent = (SessionEvent) obj;
                int i2 = EventGDTLogger.f35423b;
                String strEncode = SessionEvents.f35474b.encode(sessionEvent);
                strEncode.getClass();
                sessionEvent.f35470a.name();
                byte[] bytes = strEncode.getBytes(Charsets.UTF_8);
                bytes.getClass();
                return bytes;
            case 24:
                return FetchAnnotationSettings.execute$lambda$0((Throwable) obj);
            default:
                return FetchLanguages.execute$lambda$0((Throwable) obj);
        }
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object c(ComponentContainer componentContainer) {
        switch (this.f76361b) {
            case 11:
                return (ScheduledExecutorService) ExecutorsRegistrar.f34440a.get();
            case 12:
                return (ScheduledExecutorService) ExecutorsRegistrar.f34442c.get();
            case 13:
                return (ScheduledExecutorService) ExecutorsRegistrar.f34441b.get();
            default:
                Lazy lazy = ExecutorsRegistrar.f34440a;
                return UiExecutor.INSTANCE;
        }
    }

    @Override // coil3.EventListener.Factory
    public EventListener$Companion$NONE$1 create() {
        return EventListener.f21216a;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) {
        int i2;
        switch (this.f76361b) {
            case 20:
                i2 = 403;
                break;
            default:
                i2 = -1;
                break;
        }
        return Integer.valueOf(i2);
    }

    @Override // com.google.firebase.platforminfo.LibraryVersionComponent.VersionExtractor
    public String h(Context context) {
        switch (this.f76361b) {
            case 28:
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
            default:
                ApplicationInfo applicationInfo2 = context.getApplicationInfo();
                return applicationInfo2 != null ? String.valueOf(applicationInfo2.minSdkVersion) : "";
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((Player.Listener) obj).S();
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        switch (this.f76361b) {
            case 18:
                FaqActivity.Companion companion = FaqActivity.t;
                view.getClass();
                Insets insetsE = windowInsetsCompat.e(519);
                insetsE.getClass();
                view.setPadding(view.getPaddingLeft(), insetsE.f12055b, view.getPaddingRight(), insetsE.d);
                break;
            default:
                FaqCategoriesActivity.Companion companion2 = FaqCategoriesActivity.s;
                view.getClass();
                Insets insetsE2 = windowInsetsCompat.e(519);
                insetsE2.getClass();
                view.setPadding(view.getPaddingLeft(), insetsE2.f12055b, view.getPaddingRight(), insetsE2.d);
                break;
        }
        return windowInsetsCompat;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference
    public void release() {
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        return ((Boolean) obj).booleanValue();
    }

    public /* synthetic */ mt(int i2) {
        this.f76361b = i2;
    }
}
