package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import android.util.Base64;
import com.perfectcorp.perfectlib.CheekboneAttributeData;
import com.perfectcorp.perfectlib.EyeAttributeData;
import com.perfectcorp.perfectlib.EyebrowAttributeData;
import com.perfectcorp.perfectlib.FaceAnalysisData;
import com.perfectcorp.perfectlib.FaceAttributeData;
import com.perfectcorp.perfectlib.HairAttributeData;
import com.perfectcorp.perfectlib.LipAttributeData;
import com.perfectcorp.perfectlib.NoseAttributeData;
import com.perfectcorp.perfectlib.SingleEyeAttributeData;
import com.perfectcorp.perfectlib.SingleEyebrowAttributeData;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.usecase.pdp.vto.GetShadeFinderRecommendationsUseCase;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers.FaceAnalysisDataMapperKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers.ShadeFinderResponseMapperKt;
import com.vuitton.foundation.model.domain.model.product.vto.Cheekbone;
import com.vuitton.foundation.model.domain.model.product.vto.Eyebrow;
import com.vuitton.foundation.model.domain.model.product.vto.Eyelid;
import com.vuitton.foundation.model.domain.model.product.vto.FaceColor;
import com.vuitton.foundation.model.domain.model.product.vto.Nose;
import com.vuitton.foundation.model.domain.model.product.vto.ShadeFinderRequest;
import com.vuitton.foundation.model.domain.model.product.vto.ShadeFinderResponse;
import defpackage.md;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$handleFaceAnalysisResult$1", f = "BeautyVtoViewModelImpl.kt", l = {1036}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$handleFaceAnalysisResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61905c;
    public final /* synthetic */ FaceAnalysisData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Bitmap f61906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f61907f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$handleFaceAnalysisResult$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, FaceAnalysisData faceAnalysisData, Bitmap bitmap, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f61905c = beautyVtoViewModelImpl;
        this.d = faceAnalysisData;
        this.f61906e = bitmap;
        this.f61907f = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$handleFaceAnalysisResult$1(this.f61905c, this.d, this.f61906e, this.f61907f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$handleFaceAnalysisResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        String strEncodeToString;
        String strA;
        Object failure;
        String bowShape;
        SingleEyebrowAttributeData right;
        SingleEyebrowAttributeData left;
        SingleEyebrowAttributeData left2;
        SingleEyebrowAttributeData right2;
        SingleEyebrowAttributeData right3;
        SingleEyebrowAttributeData left3;
        SingleEyebrowAttributeData left4;
        SingleEyebrowAttributeData left5;
        SingleEyebrowAttributeData right4;
        SingleEyebrowAttributeData left6;
        SingleEyeAttributeData right5;
        SingleEyeAttributeData left7;
        SingleEyeAttributeData right6;
        SingleEyeAttributeData left8;
        SingleEyeAttributeData right7;
        SingleEyeAttributeData left9;
        Object value;
        Object value2;
        Object value3;
        BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61905c;
        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl.m0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61904b;
        if (i2 == 0) {
            ResultKt.b(obj);
            String strB = beautyVtoViewModelImpl.w.f50196a.b();
            GetShadeFinderRecommendationsUseCase getShadeFinderRecommendationsUseCase = beautyVtoViewModelImpl.v;
            if (strB != null) {
                Bitmap bitmap = this.f61906e;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 50, byteArrayOutputStream);
                    strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(byteArrayOutputStream, th);
                        throw th2;
                    }
                }
            } else {
                strEncodeToString = null;
            }
            FaceAnalysisData faceAnalysisData = this.d;
            CheekboneAttributeData cheekbone = faceAnalysisData.getCheekbone();
            String left10 = cheekbone != null ? cheekbone.getLeft() : null;
            CheekboneAttributeData cheekbone2 = faceAnalysisData.getCheekbone();
            String right8 = cheekbone2 != null ? cheekbone2.getRight() : null;
            CheekboneAttributeData cheekbone3 = faceAnalysisData.getCheekbone();
            Cheekbone cheekbone4 = new Cheekbone(left10, right8, cheekbone3 != null ? cheekbone3.getOverall() : null);
            EyeAttributeData eye = faceAnalysisData.getEye();
            String eyelid = (eye == null || (left9 = eye.getLeft()) == null) ? null : left9.getEyelid();
            EyeAttributeData eye2 = faceAnalysisData.getEye();
            String eyelid2 = (eye2 == null || (right7 = eye2.getRight()) == null) ? null : right7.getEyelid();
            EyeAttributeData eye3 = faceAnalysisData.getEye();
            String angle = (eye3 == null || (left8 = eye3.getLeft()) == null) ? null : left8.getAngle();
            EyeAttributeData eye4 = faceAnalysisData.getEye();
            String angle2 = (eye4 == null || (right6 = eye4.getRight()) == null) ? null : right6.getAngle();
            EyeAttributeData eye5 = faceAnalysisData.getEye();
            String shape = (eye5 == null || (left7 = eye5.getLeft()) == null) ? null : left7.getShape();
            EyeAttributeData eye6 = faceAnalysisData.getEye();
            String shape2 = (eye6 == null || (right5 = eye6.getRight()) == null) ? null : right5.getShape();
            EyeAttributeData eye7 = faceAnalysisData.getEye();
            String eyeSet = eye7 != null ? eye7.getEyeSet() : null;
            EyeAttributeData eye8 = faceAnalysisData.getEye();
            Eyelid eyelid3 = new Eyelid(eyelid, eyelid2, angle, angle2, shape, shape2, eyeSet, eye8 != null ? eye8.getEyeSize() : null);
            EyebrowAttributeData eyebrow = faceAnalysisData.getEyebrow();
            String gapClassName = eyebrow != null ? eyebrow.getGapClassName() : null;
            EyebrowAttributeData eyebrow2 = faceAnalysisData.getEyebrow();
            String shape3 = (eyebrow2 == null || (left6 = eyebrow2.getLeft()) == null) ? null : left6.getShape();
            EyebrowAttributeData eyebrow3 = faceAnalysisData.getEyebrow();
            String shape4 = (eyebrow3 == null || (right4 = eyebrow3.getRight()) == null) ? null : right4.getShape();
            EyebrowAttributeData eyebrow4 = faceAnalysisData.getEyebrow();
            String bodyThickness = (eyebrow4 == null || (left5 = eyebrow4.getLeft()) == null) ? null : left5.getBodyThickness();
            EyebrowAttributeData eyebrow5 = faceAnalysisData.getEyebrow();
            String tailThickness = (eyebrow5 == null || (left4 = eyebrow5.getLeft()) == null) ? null : left4.getTailThickness();
            EyebrowAttributeData eyebrow6 = faceAnalysisData.getEyebrow();
            String thinness = (eyebrow6 == null || (left3 = eyebrow6.getLeft()) == null) ? null : left3.getThinness();
            EyebrowAttributeData eyebrow7 = faceAnalysisData.getEyebrow();
            String bodyThickness2 = (eyebrow7 == null || (right3 = eyebrow7.getRight()) == null) ? null : right3.getBodyThickness();
            EyebrowAttributeData eyebrow8 = faceAnalysisData.getEyebrow();
            String tailThickness2 = (eyebrow8 == null || (right2 = eyebrow8.getRight()) == null) ? null : right2.getTailThickness();
            EyebrowAttributeData eyebrow9 = faceAnalysisData.getEyebrow();
            String thinness2 = (eyebrow9 == null || (left2 = eyebrow9.getLeft()) == null) ? null : left2.getThinness();
            EyebrowAttributeData eyebrow10 = faceAnalysisData.getEyebrow();
            String shortness = (eyebrow10 == null || (left = eyebrow10.getLeft()) == null) ? null : left.getShortness();
            EyebrowAttributeData eyebrow11 = faceAnalysisData.getEyebrow();
            Eyebrow eyebrow12 = new Eyebrow(gapClassName, shape3, shape4, bodyThickness, tailThickness, thinness, bodyThickness2, tailThickness2, thinness2, shortness, (eyebrow11 == null || (right = eyebrow11.getRight()) == null) ? null : right.getShortness());
            FaceAttributeData face = faceAnalysisData.getFace();
            String shape5 = face != null ? face.getShape() : null;
            LipAttributeData lip = faceAnalysisData.getLip();
            List listO = (lip == null || (bowShape = lip.getBowShape()) == null) ? null : CollectionsKt.O(bowShape);
            NoseAttributeData nose = faceAnalysisData.getNose();
            String width = nose != null ? nose.getWidth() : null;
            NoseAttributeData nose2 = faceAnalysisData.getNose();
            Nose nose3 = new Nose(width, nose2 != null ? nose2.getLength() : null);
            EyeAttributeData eye9 = faceAnalysisData.getEye();
            String strA2 = FaceAnalysisDataMapperKt.a(eye9 != null ? eye9.getColor() : null);
            LipAttributeData lip2 = faceAnalysisData.getLip();
            String strA3 = FaceAnalysisDataMapperKt.a(lip2 != null ? lip2.getColor() : null);
            EyebrowAttributeData eyebrow13 = faceAnalysisData.getEyebrow();
            String strA4 = FaceAnalysisDataMapperKt.a(eyebrow13 != null ? eyebrow13.getColor() : null);
            FaceAttributeData face2 = faceAnalysisData.getFace();
            String strA5 = FaceAnalysisDataMapperKt.a(face2 != null ? face2.getSkinTone() : null);
            HairAttributeData hair = faceAnalysisData.getHair();
            if ((hair != null ? hair.getColorName() : null) != null) {
                HairAttributeData hair2 = faceAnalysisData.getHair();
                strA = FaceAnalysisDataMapperKt.a(hair2 != null ? hair2.getColor() : null);
            } else {
                strA = null;
            }
            ShadeFinderRequest shadeFinderRequest = new ShadeFinderRequest(cheekbone4, eyelid3, eyebrow12, shape5, listO, nose3, new FaceColor(strA2, strA3, strA4, strA5, strA), new com.vuitton.foundation.model.domain.model.product.vto.Metadata(strEncodeToString, strB));
            this.f61904b = 1;
            Object objA = getShadeFinderRecommendationsUseCase.a(shadeFinderRequest, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            failure = objA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                failure = ShadeFinderResponseMapperKt.a((ShadeFinderResponse) failure);
            } catch (Throwable th3) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th3);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) failure;
            do {
                value3 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value3, shadeFinderResponseUiModel));
        }
        Throwable thA = Result.a(failure);
        MonitorAction monitorAction = this.f61907f;
        if (thA != null) {
            beautyVtoViewModelImpl.f61840b.d("BeautyVtoViewModelImpl", "Error while getting shade finder recommendations", thA);
            BeautyVtoViewModelImpl.Cc(beautyVtoViewModelImpl, thA, monitorAction);
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, new ShadeFinderResponseUiModel("", EmptyList.f71768b)));
        }
        MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl.l0;
        do {
            value = mutableStateFlow2.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow2.i(value, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
    }
}
