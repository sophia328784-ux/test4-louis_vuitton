package com.vuitton.android.presentation.screen.pdp.ar;

import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBindings;
import com.google.android.filament.Filament;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.ar.core.ArCoreApk;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.presentation.ar.PermissionResultEvent;
import com.vuitton.android.presentation.ar.UserCanceledException;
import com.vuitton.android.presentation.ar.arcore.ArCore;
import com.vuitton.android.presentation.ar.arcore.ArModelsKt;
import com.vuitton.android.presentation.ar.arcore.TouchEvent;
import com.vuitton.android.presentation.ar.arcore.ViewRect;
import com.vuitton.android.presentation.ar.gesture.BaseGesture;
import com.vuitton.android.presentation.ar.gesture.DragGesture;
import com.vuitton.android.presentation.ar.gesture.DragGestureRecognizer;
import com.vuitton.android.presentation.ar.gesture.TransformationSystem;
import com.vuitton.android.presentation.ar.gesture.TwistGestureRecognizer;
import com.vuitton.android.presentation.ar.renderer.FrameCallback;
import com.vuitton.android.presentation.databinding.ActivityProductDetailArBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.a;
import defpackage.d5;
import defpackage.md;
import defpackage.r81;
import defpackage.xo0;
import java.util.ArrayList;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ProductArActivity extends Hilt_ProductArActivity {
    public static final Companion D = new Companion(null);
    public ActivityProductDetailArBinding A;
    public final ContextScope B;
    public ContextScope C;
    public Logger p;
    public RequireCachedAppConfigUseCase q;
    public final MutableStateFlow r = StateFlowKt.a(null);
    public final SharedFlowImpl s;
    public final SharedFlowImpl t;
    public final SharedFlowImpl u;
    public final SharedFlowImpl v;
    public final SharedFlowImpl w;
    public final SharedFlowImpl x;
    public final MutableStateFlow y;
    public TransformationSystem z;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$Companion;", "", "", "KEY_SKU", "Ljava/lang/String;", "TAG", "", "TAP_EVENT_MILLISECONDS", "I", "REQUEST_CAMERA_PERMISSION_CODE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$onStart$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$onStart$1", f = "ProductArActivity.kt", l = {151}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61320b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f61321c;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = ProductArActivity.this.new AnonymousClass1(continuation);
            anonymousClass1.f61321c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object failure;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f61320b;
            ProductArActivity productArActivity = ProductArActivity.this;
            try {
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Result.Companion companion = Result.INSTANCE;
                    this.f61321c = null;
                    this.f61320b = 1;
                    if (ProductArActivity.I(productArActivity, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                failure = Unit.f71739a;
                Result.Companion companion2 = Result.INSTANCE;
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (!(thA instanceof UserCanceledException)) {
                    thA.printStackTrace();
                }
                Logger logger = productArActivity.p;
                if (logger == null) {
                    Intrinsics.h("logger");
                    throw null;
                }
                a.y("AR error ", thA.getMessage(), logger, "ProductArActivity", null);
                productArActivity.finish();
            }
            return Unit.f71739a;
        }
    }

    public ProductArActivity() {
        BufferOverflow bufferOverflow = BufferOverflow.DROP_OLDEST;
        this.s = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.t = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.u = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.v = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.w = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.x = SharedFlowKt.b(0, 1, bufferOverflow, 1);
        this.y = StateFlowKt.a(null);
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        this.B = CoroutineScopeKt.a(MainDispatcherLoader.f75131a);
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    public static final kotlin.coroutines.intrinsics.CoroutineSingletons H(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r17v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */

    /* JADX WARN: Code duplicated, block: B:36:0x0093  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final CoroutineSingletons I(ProductArActivity productArActivity, ContinuationImpl continuationImpl) throws Throwable {
        ProductArActivity$startUx$1 productArActivity$startUx$1;
        ArCore arCore;
        FrameCallback frameCallback;
        FrameCallback frameCallback2;
        Throwable th;
        ArCore arCore2;
        ActivityProductDetailArBinding activityProductDetailArBinding;
        if (continuationImpl instanceof ProductArActivity$startUx$1) {
            productArActivity$startUx$1 = (ProductArActivity$startUx$1) continuationImpl;
            int i2 = productArActivity$startUx$1.f61325f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productArActivity$startUx$1.f61325f = i2 - Integer.MIN_VALUE;
            } else {
                productArActivity$startUx$1 = new ProductArActivity$startUx$1(productArActivity, continuationImpl);
            }
        } else {
            productArActivity$startUx$1 = new ProductArActivity$startUx$1(productArActivity, continuationImpl);
        }
        Object objP = productArActivity$startUx$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productArActivity$startUx$1.f61325f;
        try {
            if (i3 == 0) {
                ResultKt.b(objP);
                FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(productArActivity.y);
                productArActivity$startUx$1.f61325f = 1;
                objP = FlowKt.p(flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1, productArActivity$startUx$1);
                if (objP != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    frameCallback2 = productArActivity$startUx$1.f61323c;
                    arCore2 = productArActivity$startUx$1.f61322b;
                    try {
                        ResultKt.b(objP);
                        throw new KotlinNothingValueException();
                    } catch (Throwable th2) {
                        th = th2;
                        activityProductDetailArBinding = productArActivity.A;
                        if (activityProductDetailArBinding == null) {
                            Intrinsics.h("binding");
                            throw null;
                        }
                        activityProductDetailArBinding.f51206c.setVisibility(0);
                        frameCallback2.d.removeFrameCallback(frameCallback2);
                        arCore2.s.pause();
                        throw th;
                    }
                }
                FrameCallback frameCallback3 = productArActivity$startUx$1.f61323c;
                ArCore arCore3 = productArActivity$startUx$1.f61322b;
                try {
                    ResultKt.b(objP);
                    frameCallback = frameCallback3;
                    arCore = arCore3;
                    productArActivity$startUx$1.f61322b = arCore;
                    productArActivity$startUx$1.f61323c = frameCallback;
                    productArActivity$startUx$1.f61325f = 3;
                    if (DelayKt.a(productArActivity$startUx$1) != coroutineSingletons) {
                        frameCallback2 = frameCallback;
                        arCore2 = arCore;
                        throw new KotlinNothingValueException();
                    }
                    return coroutineSingletons;
                } catch (Throwable th3) {
                    th = th3;
                    frameCallback2 = frameCallback3;
                    arCore2 = arCore3;
                    activityProductDetailArBinding = productArActivity.A;
                    if (activityProductDetailArBinding == null) {
                        Intrinsics.h("binding");
                        throw null;
                    }
                    activityProductDetailArBinding.f51206c.setVisibility(0);
                    frameCallback2.d.removeFrameCallback(frameCallback2);
                    arCore2.s.pause();
                    throw th;
                }
            }
            ResultKt.b(objP);
            arCore.s.resume();
            frameCallback.d.postFrameCallback(frameCallback);
            ProductArActivity$startUx$2 productArActivity$startUx$2 = new ProductArActivity$startUx$2(productArActivity, null);
            productArActivity$startUx$1.f61322b = arCore;
            productArActivity$startUx$1.f61323c = frameCallback;
            productArActivity$startUx$1.f61325f = 2;
            if (CoroutineScopeKt.d(productArActivity$startUx$2, productArActivity$startUx$1) != coroutineSingletons) {
                productArActivity$startUx$1.f61322b = arCore;
                productArActivity$startUx$1.f61323c = frameCallback;
                productArActivity$startUx$1.f61325f = 3;
                if (DelayKt.a(productArActivity$startUx$1) != coroutineSingletons) {
                    frameCallback2 = frameCallback;
                    arCore2 = arCore;
                    throw new KotlinNothingValueException();
                }
            }
            return coroutineSingletons;
        } catch (Throwable th4) {
            frameCallback2 = frameCallback;
            th = th4;
            arCore2 = arCore;
            activityProductDetailArBinding = productArActivity.A;
            if (activityProductDetailArBinding == null) {
                Intrinsics.h("binding");
                throw null;
            }
            activityProductDetailArBinding.f51206c.setVisibility(0);
            frameCallback2.d.removeFrameCallback(frameCallback2);
            arCore2.s.pause();
            throw th;
        }
        Pair pair = (Pair) objP;
        arCore = (ArCore) pair.f71705b;
        frameCallback = (FrameCallback) pair.f71706c;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object J(ContinuationImpl continuationImpl) throws UserCanceledException {
        ProductArActivity$ensureArCoreInstalled$1 productArActivity$ensureArCoreInstalled$1;
        if (continuationImpl instanceof ProductArActivity$ensureArCoreInstalled$1) {
            productArActivity$ensureArCoreInstalled$1 = (ProductArActivity$ensureArCoreInstalled$1) continuationImpl;
            int i2 = productArActivity$ensureArCoreInstalled$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productArActivity$ensureArCoreInstalled$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productArActivity$ensureArCoreInstalled$1 = new ProductArActivity$ensureArCoreInstalled$1(this, continuationImpl);
            }
        } else {
            productArActivity$ensureArCoreInstalled$1 = new ProductArActivity$ensureArCoreInstalled$1(this, continuationImpl);
        }
        Object obj = productArActivity$ensureArCoreInstalled$1.f61303b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productArActivity$ensureArCoreInstalled$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (ArCoreApk.getInstance().requestInstall(this, true, ArCoreApk.InstallBehavior.REQUIRED, ArCoreApk.UserMessageType.USER_ALREADY_INFORMED) == ArCoreApk.InstallStatus.INSTALL_REQUESTED) {
                FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(new FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1(this.r, new ProductArActivity$ensureArCoreInstalled$2(2, null)));
                productArActivity$ensureArCoreInstalled$1.d = 1;
                if (FlowKt.p(flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1, productArActivity$ensureArCoreInstalled$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        if (ArCoreApk.getInstance().requestInstall(this, false, ArCoreApk.InstallBehavior.REQUIRED, ArCoreApk.UserMessageType.USER_ALREADY_INFORMED) != ArCoreApk.InstallStatus.INSTALLED) {
            throw new UserCanceledException();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object K(ContinuationImpl continuationImpl) throws UserCanceledException {
        ProductArActivity$ensureCameraPermissionGranted$1 productArActivity$ensureCameraPermissionGranted$1;
        if (continuationImpl instanceof ProductArActivity$ensureCameraPermissionGranted$1) {
            productArActivity$ensureCameraPermissionGranted$1 = (ProductArActivity$ensureCameraPermissionGranted$1) continuationImpl;
            int i2 = productArActivity$ensureCameraPermissionGranted$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                productArActivity$ensureCameraPermissionGranted$1.d = i2 - Integer.MIN_VALUE;
            } else {
                productArActivity$ensureCameraPermissionGranted$1 = new ProductArActivity$ensureCameraPermissionGranted$1(this, continuationImpl);
            }
        } else {
            productArActivity$ensureCameraPermissionGranted$1 = new ProductArActivity$ensureCameraPermissionGranted$1(this, continuationImpl);
        }
        Object objP = productArActivity$ensureCameraPermissionGranted$1.f61310b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = productArActivity$ensureCameraPermissionGranted$1.d;
        if (i3 == 0) {
            ResultKt.b(objP);
            if (ContextCompat.checkSelfPermission(this, "android.permission.CAMERA") != 0) {
                requestPermissions(new String[]{"android.permission.CAMERA"}, 1121);
                final SharedFlowImpl sharedFlowImpl = this.s;
                Flow<PermissionResultEvent> flow = new Flow<PermissionResultEvent>() { // from class: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$ensureCameraPermissionGranted$$inlined$filter$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$ensureCameraPermissionGranted$$inlined$filter$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f61307b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$ensureCameraPermissionGranted$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$ensureCameraPermissionGranted$$inlined$filter$1$2", f = "ProductArActivity.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f61308b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f61309c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f61308b = obj;
                                this.f61309c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f61307b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f61309c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f61309c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f61308b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f61309c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (((PermissionResultEvent) obj).f50554a == 1121) {
                                    anonymousClass1.f61309c = 1;
                                    if (this.f61307b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                            } else {
                                if (i3 != 1) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj2);
                            }
                            return Unit.f71739a;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public final Object f(FlowCollector flowCollector, Continuation continuation) {
                        Object objF = sharedFlowImpl.f(new AnonymousClass2(flowCollector), continuation);
                        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                    }
                };
                productArActivity$ensureCameraPermissionGranted$1.d = 1;
                objP = FlowKt.p(flow, productArActivity$ensureCameraPermissionGranted$1);
                if (objP == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objP);
        for (int i4 : ((PermissionResultEvent) objP).f50555b) {
            if (i4 != 0) {
                throw new UserCanceledException();
            }
        }
        return Unit.f71739a;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        super.onConfigurationChanged(configuration);
        this.t.a(configuration);
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_product_detail_ar, (ViewGroup) null, false);
        int i2 = R.id.close;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.a(R.id.close, viewInflate);
        if (floatingActionButton != null) {
            i2 = R.id.handMotionContainer;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.handMotionContainer, viewInflate);
            if (frameLayout != null) {
                i2 = R.id.surfaceView;
                SurfaceView surfaceView = (SurfaceView) ViewBindings.a(R.id.surfaceView, viewInflate);
                if (surfaceView != null) {
                    FrameLayout frameLayout2 = (FrameLayout) viewInflate;
                    this.A = new ActivityProductDetailArBinding(frameLayout2, floatingActionButton, frameLayout, surfaceView);
                    setContentView(frameLayout2);
                    int i3 = Filament.f28544a;
                    System.loadLibrary("filament-utils-jni");
                    int i4 = 2;
                    if (Build.VERSION.SDK_INT >= 30) {
                        View viewFindViewById = findViewById(android.R.id.content);
                        viewFindViewById.getClass();
                        WindowInsetsController windowInsetsController = viewFindViewById.getWindowInsetsController();
                        windowInsetsController.getClass();
                        windowInsetsController.setSystemBarsBehavior(2);
                        windowInsetsController.hide(WindowInsets.Type.systemBars());
                    } else {
                        getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() | 4102);
                    }
                    DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
                    displayMetrics.getClass();
                    TransformationSystem transformationSystem = new TransformationSystem(displayMetrics);
                    this.z = transformationSystem;
                    ProductArActivity$initViews$3 productArActivity$initViews$3 = new ProductArActivity$initViews$3(this);
                    ArrayList arrayList = transformationSystem.f50609c.f50596c;
                    if (!arrayList.contains(productArActivity$initViews$3)) {
                        arrayList.add(productArActivity$initViews$3);
                    }
                    TransformationSystem transformationSystem2 = this.z;
                    if (transformationSystem2 == null) {
                        Intrinsics.h("transformationSystem");
                        throw null;
                    }
                    TwistGestureRecognizer twistGestureRecognizer = transformationSystem2.d;
                    ProductArActivity$initViews$4 productArActivity$initViews$4 = new ProductArActivity$initViews$4(this);
                    ArrayList arrayList2 = twistGestureRecognizer.f50596c;
                    if (!arrayList2.contains(productArActivity$initViews$4)) {
                        arrayList2.add(productArActivity$initViews$4);
                    }
                    TransformationSystem transformationSystem3 = this.z;
                    if (transformationSystem3 == null) {
                        Intrinsics.h("transformationSystem");
                        throw null;
                    }
                    DragGestureRecognizer dragGestureRecognizer = transformationSystem3.f50608b;
                    DragGestureRecognizer.OnGestureStartedListener onGestureStartedListener = new DragGestureRecognizer.OnGestureStartedListener() { // from class: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$initViews$5
                        @Override // com.vuitton.android.presentation.ar.gesture.BaseGestureRecognizer.OnGestureStartedListener
                        public final void a(BaseGesture baseGesture) {
                            DragGesture dragGesture = (DragGesture) baseGesture;
                            final ProductArActivity productArActivity = this.f61316a;
                            ActivityProductDetailArBinding activityProductDetailArBinding = productArActivity.A;
                            if (activityProductDetailArBinding == null) {
                                Intrinsics.h("binding");
                                throw null;
                            }
                            ViewRect viewRectA = ArModelsKt.a(activityProductDetailArBinding.d);
                            float[] fArr = dragGesture.f50598h.f50557a;
                            productArActivity.u.a(new Pair(viewRectA, new TouchEvent.Move(fArr[0], fArr[1])));
                            dragGesture.f50593e = new DragGesture.OnGestureEventListener() { // from class: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$initViews$5$onGestureStarted$2
                                @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture.OnGestureEventListener
                                public final void a(BaseGesture baseGesture2) {
                                    DragGesture dragGesture2 = (DragGesture) baseGesture2;
                                    dragGesture2.getClass();
                                    ProductArActivity productArActivity2 = productArActivity;
                                    ActivityProductDetailArBinding activityProductDetailArBinding2 = productArActivity2.A;
                                    if (activityProductDetailArBinding2 == null) {
                                        Intrinsics.h("binding");
                                        throw null;
                                    }
                                    ViewRect viewRectA2 = ArModelsKt.a(activityProductDetailArBinding2.d);
                                    float[] fArr2 = dragGesture2.f50598h.f50557a;
                                    productArActivity2.u.a(new Pair(viewRectA2, new TouchEvent.Stop(fArr2[0], fArr2[1])));
                                }

                                @Override // com.vuitton.android.presentation.ar.gesture.BaseGesture.OnGestureEventListener
                                public final void b(BaseGesture baseGesture2) {
                                    DragGesture dragGesture2 = (DragGesture) baseGesture2;
                                    dragGesture2.getClass();
                                    ProductArActivity productArActivity2 = productArActivity;
                                    ActivityProductDetailArBinding activityProductDetailArBinding2 = productArActivity2.A;
                                    if (activityProductDetailArBinding2 == null) {
                                        Intrinsics.h("binding");
                                        throw null;
                                    }
                                    ViewRect viewRectA2 = ArModelsKt.a(activityProductDetailArBinding2.d);
                                    float[] fArr2 = dragGesture2.f50598h.f50557a;
                                    productArActivity2.u.a(new Pair(viewRectA2, new TouchEvent.Move(fArr2[0], fArr2[1])));
                                }
                            };
                        }
                    };
                    ArrayList arrayList3 = dragGestureRecognizer.f50596c;
                    if (!arrayList3.contains(onGestureStartedListener)) {
                        arrayList3.add(onGestureStartedListener);
                    }
                    ActivityProductDetailArBinding activityProductDetailArBinding = this.A;
                    if (activityProductDetailArBinding == null) {
                        Intrinsics.h("binding");
                        throw null;
                    }
                    activityProductDetailArBinding.d.setOnTouchListener(new d5(this, i4));
                    BuildersKt.c(this.B, null, null, new ProductArActivity$initViews$7(this, null), 3);
                    ActivityProductDetailArBinding activityProductDetailArBinding2 = this.A;
                    if (activityProductDetailArBinding2 != null) {
                        ViewExtKt.d(activityProductDetailArBinding2.f51205b, new xo0(this, 2));
                        return;
                    } else {
                        Intrinsics.h("binding");
                        throw null;
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        CoroutineScopeKt.c(this.B, null);
        super.onDestroy();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.r.a(null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        strArr.getClass();
        iArr.getClass();
        super.onRequestPermissionsResult(i2, strArr, iArr);
        this.s.a(new PermissionResultEvent(i2, iArr));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.r.a(Unit.f71739a);
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        ContextScope contextScopeA = CoroutineScopeKt.a(MainDispatcherLoader.f75131a);
        this.C = contextScopeA;
        BuildersKt.c(contextScopeA, null, null, new AnonymousClass1(null), 3);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        ContextScope contextScope = this.C;
        if (contextScope == null) {
            Intrinsics.h("startScope");
            throw null;
        }
        CoroutineScopeKt.c(contextScope, null);
        super.onStop();
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
