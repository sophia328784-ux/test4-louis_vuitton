package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1", f = "OsaContactFormViewModelImpl.kt", l = {288, 286, 292, 296, 306, 321}, m = "invokeSuspend", v = 2)
public final class OsaContactFormViewModelImpl$loadDynamicForms$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GetAddressCivilitiesMappingUseCase f60655b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f60656c;
    public FormUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f60657e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f60658f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f60659h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f60660i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModelImpl f60661j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f60662k;
    public final /* synthetic */ FormUiModel l;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60666a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f60666a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$loadDynamicForms$1(OsaContactFormViewModelImpl osaContactFormViewModelImpl, boolean z, FormUiModel formUiModel, Continuation continuation) {
        super(2, continuation);
        this.f60661j = osaContactFormViewModelImpl;
        this.f60662k = z;
        this.l = formUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$loadDynamicForms$1(this.f60661j, this.f60662k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$loadDynamicForms$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00c7 A[PHI: r1 r5 r10 r15
      0x00c7: PHI (r1v8 java.lang.Object) = (r1v5 java.lang.Object), (r1v14 java.lang.Object) binds: [B:18:0x00c3, B:9:0x006d] A[DONT_GENERATE, DONT_INLINE]
      0x00c7: PHI (r5v5 com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase) = 
      (r5v16 com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase)
      (r5v13 com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase)
     binds: [B:18:0x00c3, B:9:0x006d] A[DONT_GENERATE, DONT_INLINE]
      0x00c7: PHI (r10v5 com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1) = 
      (r10v4 com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1)
      (r10v0 com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1)
     binds: [B:18:0x00c3, B:9:0x006d] A[DONT_GENERATE, DONT_INLINE]
      0x00c7: PHI (r15v5 int) = (r15v4 int), (r15v0 int) binds: [B:18:0x00c3, B:9:0x006d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:22:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:28:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:31:0x0106  */
    /* JADX WARN: Code duplicated, block: B:34:0x014e  */
    /* JADX WARN: Code duplicated, block: B:37:0x015c  */
    /* JADX WARN: Code duplicated, block: B:40:0x0193  */
    /* JADX WARN: Code duplicated, block: B:41:0x0199  */
    /* JADX WARN: Code duplicated, block: B:44:0x01de  */
    /* JADX WARN: Code duplicated, block: B:47:0x01e9  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0190, code lost:
    
        if (r0 == r14) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01db, code lost:
    
        if (r0 == r14) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v7, types: [com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase, com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel, java.lang.Object, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9, types: [com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase, com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel, java.lang.Object, kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase, com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel, kotlin.coroutines.Continuation] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) {
        /*
            Method dump skipped, instruction units count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
