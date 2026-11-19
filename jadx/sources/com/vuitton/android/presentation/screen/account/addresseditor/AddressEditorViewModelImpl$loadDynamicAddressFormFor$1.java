package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1", f = "AddressEditorViewModelImpl.kt", l = {225, 228, 228, 234, 232, 239, 241}, m = "invokeSuspend", v = 2)
public final class AddressEditorViewModelImpl$loadDynamicAddressFormFor$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f52234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AddressEditorViewModelImpl f52235c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public GetAddressCivilitiesMappingUseCase f52236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f52237f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f52238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AddressEditorViewModelImpl f52239i;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52242a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.DESCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.CIVILITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FormSectionTypeUiModel.ADDRESS1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FormSectionTypeUiModel.ADDRESS2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FormSectionTypeUiModel.CITY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FormSectionTypeUiModel.POSTAL_CODE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[FormSectionTypeUiModel.STATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[FormSectionTypeUiModel.COUNTRY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            f52242a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressEditorViewModelImpl$loadDynamicAddressFormFor$1(AddressEditorViewModelImpl addressEditorViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52239i = addressEditorViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressEditorViewModelImpl$loadDynamicAddressFormFor$1(this.f52239i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressEditorViewModelImpl$loadDynamicAddressFormFor$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00be A[PHI: r0 r1 r2 r5 r10
      0x00be: PHI (r0v4 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase) = 
      (r0v1 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase)
      (r0v0 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase)
     binds: [B:20:0x00ba, B:11:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r1v8 boolean) = (r1v6 boolean), (r1v9 boolean) binds: [B:20:0x00ba, B:11:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r2v4 int) = (r2v1 int), (r2v0 int) binds: [B:20:0x00ba, B:11:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r5v4 java.lang.Object) = (r5v3 java.lang.Object), (r5v7 java.lang.Object) binds: [B:20:0x00ba, B:11:0x0076] A[DONT_GENERATE, DONT_INLINE]
      0x00be: PHI (r10v4 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1) = 
      (r10v1 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1)
      (r10v0 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1)
     binds: [B:20:0x00ba, B:11:0x0076] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:25:0x00cd A[PHI: r0 r1 r2 r5 r10
      0x00cd: PHI (r0v5 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase) = 
      (r0v4 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase)
      (r0v0 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase)
     binds: [B:23:0x00c9, B:10:0x006a] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r1v10 boolean) = (r1v8 boolean), (r1v11 boolean) binds: [B:23:0x00c9, B:10:0x006a] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r2v5 int) = (r2v4 int), (r2v0 int) binds: [B:23:0x00c9, B:10:0x006a] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r5v8 java.lang.Object) = (r5v6 java.lang.Object), (r5v17 java.lang.Object) binds: [B:23:0x00c9, B:10:0x006a] A[DONT_GENERATE, DONT_INLINE]
      0x00cd: PHI (r10v5 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1) = 
      (r10v4 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1)
      (r10v0 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1)
     binds: [B:23:0x00c9, B:10:0x006a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:33:0x0109  */
    /* JADX WARN: Code duplicated, block: B:37:0x012a  */
    /* JADX WARN: Code duplicated, block: B:38:0x012f A[PHI: r0 r1 r2 r5 r10
      0x012f: PHI (r0v7 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase) = 
      (r0v5 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase)
      (r0v6 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase)
      (r0v0 com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase)
     binds: [B:37:0x012a, B:35:0x0126, B:8:0x003e] A[DONT_GENERATE, DONT_INLINE]
      0x012f: PHI (r1v15 boolean) = (r1v10 boolean), (r1v12 boolean), (r1v17 boolean) binds: [B:37:0x012a, B:35:0x0126, B:8:0x003e] A[DONT_GENERATE, DONT_INLINE]
      0x012f: PHI (r2v7 int) = (r2v5 int), (r2v6 int), (r2v0 int) binds: [B:37:0x012a, B:35:0x0126, B:8:0x003e] A[DONT_GENERATE, DONT_INLINE]
      0x012f: PHI (r5v24 java.lang.Object) = (r5v9 java.lang.Object), (r5v21 java.lang.Object), (r5v33 java.lang.Object) binds: [B:37:0x012a, B:35:0x0126, B:8:0x003e] A[DONT_GENERATE, DONT_INLINE]
      0x012f: PHI (r10v7 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1) = 
      (r10v5 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1)
      (r10v6 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1)
      (r10v0 com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1)
     binds: [B:37:0x012a, B:35:0x0126, B:8:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:40:0x0135  */
    /* JADX WARN: Code duplicated, block: B:43:0x0140  */
    /* JADX WARN: Code duplicated, block: B:46:0x0160  */
    /* JADX WARN: Code duplicated, block: B:50:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:53:0x01db  */
    /* JADX WARN: Code duplicated, block: B:61:0x0215 A[LOOP:2: B:17:0x009d->B:61:0x0215, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00af A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01cd, code lost:
    
        if (r0 == r14) goto L49;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
