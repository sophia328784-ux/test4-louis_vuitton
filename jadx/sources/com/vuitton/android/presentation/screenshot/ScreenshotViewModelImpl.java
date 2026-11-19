package com.vuitton.android.presentation.screenshot;

import android.app.Application;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import defpackage.md;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModel;", "Landroid/app/Application;", "application", "<init>", "(Landroid/app/Application;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScreenshotViewModelImpl extends AndroidViewModel implements ScreenshotViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Application f65778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Job f65779c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ScreenshotViewModelImpl$registerObserver$contentObserver$1 f65780e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public ScreenshotViewModelImpl(Application application) {
        super(application);
        application.getClass();
        this.f65778b = application;
        this.d = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(ScreenshotViewModelImpl screenshotViewModelImpl, ContinuationImpl continuationImpl) {
        ScreenshotViewModelImpl$notifySubscribers$1 screenshotViewModelImpl$notifySubscribers$1;
        Iterator it;
        int i2;
        if (continuationImpl instanceof ScreenshotViewModelImpl$notifySubscribers$1) {
            screenshotViewModelImpl$notifySubscribers$1 = (ScreenshotViewModelImpl$notifySubscribers$1) continuationImpl;
            int i3 = screenshotViewModelImpl$notifySubscribers$1.f65784f;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                screenshotViewModelImpl$notifySubscribers$1.f65784f = i3 - Integer.MIN_VALUE;
            } else {
                screenshotViewModelImpl$notifySubscribers$1 = new ScreenshotViewModelImpl$notifySubscribers$1(screenshotViewModelImpl, continuationImpl);
            }
        } else {
            screenshotViewModelImpl$notifySubscribers$1 = new ScreenshotViewModelImpl$notifySubscribers$1(screenshotViewModelImpl, continuationImpl);
        }
        Object obj = screenshotViewModelImpl$notifySubscribers$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = screenshotViewModelImpl$notifySubscribers$1.f65784f;
        if (i4 == 0) {
            ResultKt.b(obj);
            it = screenshotViewModelImpl.d.entrySet().iterator();
            i2 = 0;
        } else {
            if (i4 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i2 = screenshotViewModelImpl$notifySubscribers$1.f65782c;
            it = screenshotViewModelImpl$notifySubscribers$1.f65781b;
            ResultKt.b(obj);
        }
        while (it.hasNext()) {
            MutableSharedFlow mutableSharedFlow = (MutableSharedFlow) ((Map.Entry) it.next()).getValue();
            Unit unit = Unit.f71739a;
            screenshotViewModelImpl$notifySubscribers$1.f65781b = it;
            screenshotViewModelImpl$notifySubscribers$1.f65782c = i2;
            screenshotViewModelImpl$notifySubscribers$1.f65784f = 1;
            if (mutableSharedFlow.emit(unit, screenshotViewModelImpl$notifySubscribers$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screenshot.ScreenshotViewModel
    public final void R7(String str) {
        str.getClass();
        ScreenshotViewModelImpl$registerObserver$contentObserver$1 screenshotViewModelImpl$registerObserver$contentObserver$1 = this.f65780e;
        if (screenshotViewModelImpl$registerObserver$contentObserver$1 != null) {
            this.f65778b.getContentResolver().unregisterContentObserver(screenshotViewModelImpl$registerObserver$contentObserver$1);
        }
        this.f65780e = null;
        this.d.remove(str);
        Job job = this.f65779c;
        if (job != null) {
            job.cancel(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.database.ContentObserver, com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl$registerObserver$contentObserver$1] */
    @Override // com.vuitton.android.presentation.screenshot.ScreenshotViewModel
    public final SharedFlow d3(String str) {
        str.getClass();
        if (this.f65780e == null) {
            ContentResolver contentResolver = this.f65778b.getContentResolver();
            contentResolver.getClass();
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            final Handler handler = new Handler(Looper.getMainLooper());
            ?? r3 = new ContentObserver(handler) { // from class: com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl$registerObserver$contentObserver$1
                @Override // android.database.ContentObserver
                public final void onChange(boolean z, Uri uri) {
                    super.onChange(z, uri);
                    Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                    if (Intrinsics.c(uri, ref$ObjectRef2.f71921b)) {
                        return;
                    }
                    ref$ObjectRef2.f71921b = uri;
                    if (uri != null) {
                        ScreenshotViewModelImpl screenshotViewModelImpl = this;
                        screenshotViewModelImpl.f65779c = BuildersKt.c(ViewModelKt.a(screenshotViewModelImpl), null, null, new ScreenshotViewModelImpl$registerObserver$contentObserver$1$onChange$1(screenshotViewModelImpl, null), 3);
                    }
                }
            };
            contentResolver.registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, true, r3);
            this.f65780e = r3;
        }
        LinkedHashMap linkedHashMap = this.d;
        Object objB = linkedHashMap.get(str);
        if (objB == null) {
            objB = SharedFlowKt.b(0, 0, null, 7);
            linkedHashMap.put(str, objB);
        }
        return (SharedFlow) objB;
    }
}
