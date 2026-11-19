package com.vuitton.android.presentation.screen.account.lvpass;

import android.graphics.Bitmap;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyLvMonitoring;
import com.vuitton.android.domain.usecase.account.GetPassUseCase;
import com.vuitton.foundation.model.domain.error.lvpass.LvPassError;
import com.vuitton.foundation.model.domain.model.pass.Pass;
import defpackage.md;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModelImpl$loadQRCodeData$1", f = "QRCodeViewModelImpl.kt", l = {EACTags.DATE_OF_BIRTH, 46, 57, EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class QRCodeViewModelImpl$loadQRCodeData$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public QRCodeViewModelImpl f52457c;
    public Pass.Speedy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Bitmap f52458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f52459f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ QRCodeViewModelImpl f52460h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QRCodeViewModelImpl$loadQRCodeData$1(QRCodeViewModelImpl qRCodeViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52460h = qRCodeViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QRCodeViewModelImpl$loadQRCodeData$1(this.f52460h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QRCodeViewModelImpl$loadQRCodeData$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ac A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:9:0x001f, B:55:0x011b, B:57:0x011f, B:58:0x012f, B:60:0x0137, B:61:0x013c, B:21:0x0047, B:35:0x00a8, B:37:0x00ac, B:38:0x00be, B:39:0x00c3), top: B:85:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00be A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:9:0x001f, B:55:0x011b, B:57:0x011f, B:58:0x012f, B:60:0x0137, B:61:0x013c, B:21:0x0047, B:35:0x00a8, B:37:0x00ac, B:38:0x00be, B:39:0x00c3), top: B:85:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00f7 A[Catch: all -> 0x00c9, TRY_LEAVE, TryCatch #1 {all -> 0x00c9, blocks: (B:49:0x00f3, B:51:0x00f7, B:62:0x013d, B:63:0x0142, B:29:0x007e, B:31:0x0085, B:43:0x00cb, B:45:0x00cf, B:64:0x0143, B:65:0x0148), top: B:86:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0117  */
    /* JADX WARN: Code duplicated, block: B:57:0x011f A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:9:0x001f, B:55:0x011b, B:57:0x011f, B:58:0x012f, B:60:0x0137, B:61:0x013c, B:21:0x0047, B:35:0x00a8, B:37:0x00ac, B:38:0x00be, B:39:0x00c3), top: B:85:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0137 A[Catch: all -> 0x0024, TryCatch #0 {all -> 0x0024, blocks: (B:9:0x001f, B:55:0x011b, B:57:0x011f, B:58:0x012f, B:60:0x0137, B:61:0x013c, B:21:0x0047, B:35:0x00a8, B:37:0x00ac, B:38:0x00be, B:39:0x00c3), top: B:85:0x000f }] */
    /* JADX WARN: Code duplicated, block: B:62:0x013d A[Catch: all -> 0x00c9, TRY_ENTER, TryCatch #1 {all -> 0x00c9, blocks: (B:49:0x00f3, B:51:0x00f7, B:62:0x013d, B:63:0x0142, B:29:0x007e, B:31:0x0085, B:43:0x00cb, B:45:0x00cf, B:64:0x0143, B:65:0x0148), top: B:86:0x007e }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0157  */
    /* JADX WARN: Code duplicated, block: B:71:0x015b  */
    /* JADX WARN: Code duplicated, block: B:72:0x0164  */
    /* JADX WARN: Code duplicated, block: B:74:0x0168  */
    /* JADX WARN: Code duplicated, block: B:75:0x0171  */
    /* JADX WARN: Code duplicated, block: B:77:0x0175  */
    /* JADX WARN: Code duplicated, block: B:78:0x017e  */
    /* JADX WARN: Code duplicated, block: B:81:0x0197  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModelImpl$loadQRCodeData$1, kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.ContinuationImpl] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v3, types: [com.vuitton.android.domain.monitoring.MonitorAction] */
    /* JADX WARN: Type inference failed for: r14v4 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        ?? r14;
        Object objA;
        Throwable thA;
        String message;
        ?? r13;
        DynatraceMonitorAction dynatraceMonitorActionA;
        MonitorAction monitorAction;
        int i2;
        Object objF;
        Pass pass;
        QRCodeViewModelImpl qRCodeViewModelImpl;
        MonitorAction monitorAction2;
        QRCodeViewModelImpl qRCodeViewModelImpl2;
        Bitmap bitmap;
        Object objC;
        MonitorAction monitorAction3;
        Bitmap bitmap2;
        Object objF2;
        MonitorAction monitorAction4;
        Bitmap bitmap3;
        MonitorAction monitorAction5;
        Bitmap bitmap4;
        QRCodeViewModelImpl qRCodeViewModelImpl3 = this.f52460h;
        MutableStateFlow mutableStateFlow = qRCodeViewModelImpl3.f52454e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                dynatraceMonitorActionA = qRCodeViewModelImpl3.f52453c.a(qRCodeViewModelImpl3.d, MyLvMonitoring.Action.DisplayLvPass.f48927a);
                mutableStateFlow.setValue(QRCodeScreenState.Loading.f52447a);
                GetPassUseCase getPassUseCase = qRCodeViewModelImpl3.f52451a;
                this.f52456b = dynatraceMonitorActionA;
                this.g = 1;
                objA = getPassUseCase.a(this);
                if (objA != coroutineSingletons) {
                }
                monitorAction = dynatraceMonitorActionA;
                return coroutineSingletons;
            }
            if (i3 != 1) {
                if (i3 == 2) {
                    qRCodeViewModelImpl2 = this.f52457c;
                    MonitorAction monitorAction6 = this.f52456b;
                    ResultKt.b(obj);
                    monitorAction2 = monitorAction6;
                    bitmap = (Bitmap) obj;
                    if (bitmap != null) {
                        throw new LvPassError.LvPass2dError(null, 1, null);
                    }
                    qRCodeViewModelImpl2.f52454e.setValue(new QRCodeScreenState.Success.QrCode2D(bitmap));
                    objC = monitorAction2.c("lvpass", "type");
                    monitorAction5 = monitorAction2;
                    failure = new Result(objC);
                    r13 = monitorAction5;
                    r14 = r13;
                    objA = failure;
                    thA = Result.a(objA);
                    if (thA != null) {
                        if (thA instanceof LvPassError.LvPass3dError) {
                            r14.d(new MyLvMonitoring.Error.DisplayLvPass3dError(thA));
                        } else if (thA instanceof LvPassError.LvPass2dError) {
                            r14.d(new MyLvMonitoring.Error.DisplayLvPass2dError(thA));
                        } else if (thA instanceof LvPassError.LvPassMultipartError) {
                            r14.d(new MyLvMonitoring.Error.DisplayLvPassMultipartError(thA));
                        } else {
                            r14.d(new MyLvMonitoring.Error.DisplayLvPassLoadingError(thA));
                        }
                        qRCodeViewModelImpl3.f52452b.c(QRCodeViewModelImpl.g, "error loading qr code data", thA);
                        message = thA.getMessage();
                        if (message == null) {
                            message = "Unknown error";
                        }
                        mutableStateFlow.setValue(new QRCodeScreenState.Error(message));
                    }
                    r14.b();
                    return Unit.f71739a;
                }
                if (i3 == 3) {
                    int i4 = this.f52459f;
                    Pass.Speedy speedy = this.d;
                    QRCodeViewModelImpl qRCodeViewModelImpl4 = this.f52457c;
                    MonitorAction monitorAction7 = this.f52456b;
                    try {
                        ResultKt.b(obj);
                        i2 = i4;
                        qRCodeViewModelImpl = qRCodeViewModelImpl4;
                        pass = speedy;
                        objF = obj;
                        monitorAction3 = monitorAction7;
                        bitmap2 = (Bitmap) objF;
                        if (bitmap2 != null) {
                            throw new LvPassError.LvPass3dError(null, 1, null);
                        }
                        InputStream inputStream = ((Pass.Speedy) pass).f67788b;
                        this.f52456b = monitorAction3;
                        this.f52457c = qRCodeViewModelImpl;
                        this.d = null;
                        this.f52458e = bitmap2;
                        this.f52459f = i2;
                        this.g = 4;
                        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                        objF2 = BuildersKt.f(DefaultIoScheduler.f75161b, new BitmapUtils$fromInputStream$2(inputStream, null), this);
                        if (objF2 != coroutineSingletons) {
                            MonitorAction monitorAction8 = monitorAction3;
                            obj = objF2;
                            monitorAction4 = monitorAction8;
                            bitmap3 = bitmap2;
                        }
                        monitorAction = dynatraceMonitorActionA;
                        return coroutineSingletons;
                    } catch (Throwable th) {
                        th = th;
                        this = monitorAction7;
                        Result.Companion companion = Result.INSTANCE;
                        failure = new Result.Failure(th);
                        r13 = this;
                    }
                } else {
                    if (i3 != 4) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    bitmap3 = this.f52458e;
                    qRCodeViewModelImpl = this.f52457c;
                    MonitorAction monitorAction9 = this.f52456b;
                    ResultKt.b(obj);
                    monitorAction4 = monitorAction9;
                }
                bitmap4 = (Bitmap) obj;
                if (bitmap4 != null) {
                    throw new LvPassError.LvPass3dError(null, 1, null);
                }
                qRCodeViewModelImpl.f52454e.setValue(new QRCodeScreenState.Success.QrCode3D(bitmap3, bitmap4));
                objC = monitorAction4.c("speedy", "type");
                monitorAction5 = monitorAction4;
                failure = new Result(objC);
                r13 = monitorAction5;
                r14 = r13;
                objA = failure;
                thA = Result.a(objA);
                if (thA != null) {
                    if (thA instanceof LvPassError.LvPass3dError) {
                        r14.d(new MyLvMonitoring.Error.DisplayLvPass3dError(thA));
                    } else if (thA instanceof LvPassError.LvPass2dError) {
                        r14.d(new MyLvMonitoring.Error.DisplayLvPass2dError(thA));
                    } else if (thA instanceof LvPassError.LvPassMultipartError) {
                        r14.d(new MyLvMonitoring.Error.DisplayLvPassMultipartError(thA));
                    } else {
                        r14.d(new MyLvMonitoring.Error.DisplayLvPassLoadingError(thA));
                    }
                    qRCodeViewModelImpl3.f52452b.c(QRCodeViewModelImpl.g, "error loading qr code data", thA);
                    message = thA.getMessage();
                    if (message == null) {
                        message = "Unknown error";
                    }
                    mutableStateFlow.setValue(new QRCodeScreenState.Error(message));
                }
                r14.b();
                return Unit.f71739a;
            }
            MonitorAction monitorAction10 = this.f52456b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            monitorAction = monitorAction10;
            monitorAction = dynatraceMonitorActionA;
            Result.Companion companion2 = Result.INSTANCE;
            r14 = monitorAction;
            if (!(objA instanceof Result.Failure)) {
                try {
                    Pass pass2 = (Pass) objA;
                    i2 = 0;
                    if (pass2 instanceof Pass.Normal) {
                        InputStream inputStream2 = ((Pass.Normal) pass2).f67786a;
                        this.f52456b = monitorAction;
                        this.f52457c = qRCodeViewModelImpl3;
                        this.d = null;
                        this.f52459f = 0;
                        this.g = 2;
                        DefaultScheduler defaultScheduler2 = Dispatchers.f74659a;
                        Object objF3 = BuildersKt.f(DefaultIoScheduler.f75161b, new BitmapUtils$fromInputStream$2(inputStream2, null), this);
                        if (objF3 != coroutineSingletons) {
                            MonitorAction monitorAction11 = monitorAction;
                            obj = objF3;
                            monitorAction2 = monitorAction11;
                            qRCodeViewModelImpl2 = qRCodeViewModelImpl3;
                            bitmap = (Bitmap) obj;
                            if (bitmap != null) {
                                throw new LvPassError.LvPass2dError(null, 1, null);
                            }
                            qRCodeViewModelImpl2.f52454e.setValue(new QRCodeScreenState.Success.QrCode2D(bitmap));
                            objC = monitorAction2.c("lvpass", "type");
                            monitorAction5 = monitorAction2;
                            failure = new Result(objC);
                            r13 = monitorAction5;
                            r14 = r13;
                            objA = failure;
                        }
                    } else {
                        if (!(pass2 instanceof Pass.Speedy)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        InputStream inputStream3 = ((Pass.Speedy) pass2).f67787a;
                        this.f52456b = monitorAction;
                        this.f52457c = qRCodeViewModelImpl3;
                        this.d = (Pass.Speedy) pass2;
                        this.f52459f = 0;
                        this.g = 3;
                        DefaultScheduler defaultScheduler3 = Dispatchers.f74659a;
                        objF = BuildersKt.f(DefaultIoScheduler.f75161b, new BitmapUtils$fromInputStream$2(inputStream3, null), this);
                        if (objF != coroutineSingletons) {
                            pass = pass2;
                            qRCodeViewModelImpl = qRCodeViewModelImpl3;
                            monitorAction3 = monitorAction;
                            bitmap2 = (Bitmap) objF;
                            if (bitmap2 != null) {
                                throw new LvPassError.LvPass3dError(null, 1, null);
                            }
                            InputStream inputStream4 = ((Pass.Speedy) pass).f67788b;
                            this.f52456b = monitorAction3;
                            this.f52457c = qRCodeViewModelImpl;
                            this.d = null;
                            this.f52458e = bitmap2;
                            this.f52459f = i2;
                            this.g = 4;
                            DefaultScheduler defaultScheduler4 = Dispatchers.f74659a;
                            objF2 = BuildersKt.f(DefaultIoScheduler.f75161b, new BitmapUtils$fromInputStream$2(inputStream4, null), this);
                            if (objF2 != coroutineSingletons) {
                                MonitorAction monitorAction12 = monitorAction3;
                                obj = objF2;
                                monitorAction4 = monitorAction12;
                                bitmap3 = bitmap2;
                                bitmap4 = (Bitmap) obj;
                                if (bitmap4 != null) {
                                    throw new LvPassError.LvPass3dError(null, 1, null);
                                }
                                qRCodeViewModelImpl.f52454e.setValue(new QRCodeScreenState.Success.QrCode3D(bitmap3, bitmap4));
                                objC = monitorAction4.c("speedy", "type");
                                monitorAction5 = monitorAction4;
                                failure = new Result(objC);
                                r13 = monitorAction5;
                                r14 = r13;
                                objA = failure;
                            }
                        }
                    }
                    monitorAction = dynatraceMonitorActionA;
                    return coroutineSingletons;
                } catch (Throwable th2) {
                    MonitorAction monitorAction13 = monitorAction;
                    th = th2;
                    this = monitorAction13;
                    Result.Companion companion3 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                    r13 = this;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
        thA = Result.a(objA);
        if (thA != null) {
            if (thA instanceof LvPassError.LvPass3dError) {
                r14.d(new MyLvMonitoring.Error.DisplayLvPass3dError(thA));
            } else if (thA instanceof LvPassError.LvPass2dError) {
                r14.d(new MyLvMonitoring.Error.DisplayLvPass2dError(thA));
            } else if (thA instanceof LvPassError.LvPassMultipartError) {
                r14.d(new MyLvMonitoring.Error.DisplayLvPassMultipartError(thA));
            } else {
                r14.d(new MyLvMonitoring.Error.DisplayLvPassLoadingError(thA));
            }
            qRCodeViewModelImpl3.f52452b.c(QRCodeViewModelImpl.g, "error loading qr code data", thA);
            message = thA.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            mutableStateFlow.setValue(new QRCodeScreenState.Error(message));
        }
        r14.b();
        return Unit.f71739a;
    }
}
