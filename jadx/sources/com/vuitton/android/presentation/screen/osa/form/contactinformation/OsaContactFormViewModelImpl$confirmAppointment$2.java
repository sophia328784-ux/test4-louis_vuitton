package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$confirmAppointment$2", f = "OsaContactFormViewModelImpl.kt", l = {409, 415, 429, 446, 458, 460, 475, 478, 481}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$confirmAppointment$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f60643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f60644c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OsaReasonUiModel f60645e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60646f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f60647h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f60648i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f60649j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f60650k;
    public final /* synthetic */ OsaContactFormViewModelImpl l;
    public final /* synthetic */ OsaReasonUiModel m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$confirmAppointment$2(OsaContactFormViewModelImpl osaContactFormViewModelImpl, OsaReasonUiModel osaReasonUiModel, Continuation continuation) {
        super(2, continuation);
        this.l = osaContactFormViewModelImpl;
        this.m = osaReasonUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$confirmAppointment$2(this.l, this.m, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$confirmAppointment$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02a1  */
    /* JADX WARN: Code duplicated, block: B:105:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:107:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:110:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:112:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:113:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:115:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:120:0x0308  */
    /* JADX WARN: Code duplicated, block: B:129:0x0325  */
    /* JADX WARN: Code duplicated, block: B:133:0x034a  */
    /* JADX WARN: Code duplicated, block: B:134:0x034d  */
    /* JADX WARN: Code duplicated, block: B:136:0x0350  */
    /* JADX WARN: Code duplicated, block: B:137:0x0353  */
    /* JADX WARN: Code duplicated, block: B:141:0x0370  */
    /* JADX WARN: Code duplicated, block: B:145:0x0379  */
    /* JADX WARN: Code duplicated, block: B:150:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:153:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:155:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:157:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:159:0x03c3  */
    /* JADX WARN: Code duplicated, block: B:162:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:167:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:168:0x03d8 A[Catch: all -> 0x03e8, TryCatch #2 {all -> 0x03e8, blocks: (B:165:0x03d1, B:168:0x03d8, B:172:0x03eb), top: B:218:0x03d1 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:178:0x0400  */
    /* JADX WARN: Code duplicated, block: B:180:0x0404  */
    /* JADX WARN: Code duplicated, block: B:183:0x0417  */
    /* JADX WARN: Code duplicated, block: B:186:0x041c  */
    /* JADX WARN: Code duplicated, block: B:193:0x042b  */
    /* JADX WARN: Code duplicated, block: B:196:0x0434  */
    /* JADX WARN: Code duplicated, block: B:198:0x0441  */
    /* JADX WARN: Code duplicated, block: B:199:0x044e  */
    /* JADX WARN: Code duplicated, block: B:204:0x046a  */
    /* JADX WARN: Code duplicated, block: B:207:0x0486  */
    /* JADX WARN: Code duplicated, block: B:208:0x0487  */
    /* JADX WARN: Code duplicated, block: B:213:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:218:0x03d1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0284 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:233:0x0310 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x01d4 A[Catch: all -> 0x0202, TRY_LEAVE, TryCatch #1 {all -> 0x0202, blocks: (B:50:0x01d0, B:52:0x01d4), top: B:216:0x01d0 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:57:0x01f7 A[Catch: all -> 0x01ff, PHI: r0 r2 r7 r13 r15 r16 r24
      0x01f7: PHI (r0v108 java.lang.Object) = (r0v103 java.lang.Object), (r0v113 java.lang.Object) binds: [B:55:0x01f3, B:13:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x01f7: PHI (r2v35 char) = (r2v32 char), (r2v36 char) binds: [B:55:0x01f3, B:13:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x01f7: PHI (r7v31 com.vuitton.android.domain.monitoring.MonitorAction) = 
      (r7v26 com.vuitton.android.domain.monitoring.MonitorAction)
      (r7v32 com.vuitton.android.domain.monitoring.MonitorAction)
     binds: [B:55:0x01f3, B:13:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x01f7: PHI (r13v18 com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel) = 
      (r13v32 com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel)
      (r13v19 com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel)
     binds: [B:55:0x01f3, B:13:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x01f7: PHI (r15v25 com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel) = 
      (r15v32 com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel)
      (r15v26 com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel)
     binds: [B:55:0x01f3, B:13:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x01f7: PHI (r16v20 kotlinx.coroutines.flow.SharedFlowImpl) = (r16v33 kotlinx.coroutines.flow.SharedFlowImpl), (r16v21 kotlinx.coroutines.flow.SharedFlowImpl) binds: [B:55:0x01f3, B:13:0x0081] A[DONT_GENERATE, DONT_INLINE]
      0x01f7: PHI (r24v18 java.lang.String) = (r24v14 java.lang.String), (r24v19 java.lang.String) binds: [B:55:0x01f3, B:13:0x0081] A[DONT_GENERATE, DONT_INLINE], TryCatch #13 {all -> 0x01ff, blocks: (B:57:0x01f7, B:79:0x0256, B:54:0x01ed, B:62:0x0206, B:63:0x020e), top: B:220:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0206 A[Catch: all -> 0x01ff, TryCatch #13 {all -> 0x01ff, blocks: (B:57:0x01f7, B:79:0x0256, B:54:0x01ed, B:62:0x0206, B:63:0x020e), top: B:220:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x026d  */
    /* JADX WARN: Code duplicated, block: B:87:0x0271  */
    /* JADX WARN: Code duplicated, block: B:92:0x0288 A[Catch: all -> 0x0294, TryCatch #7 {all -> 0x0294, blocks: (B:90:0x0284, B:92:0x0288, B:95:0x0291), top: B:227:0x0284 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0290  */
    /* JADX WARN: Code duplicated, block: B:99:0x0296  */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x039a, code lost:
    
        if (r1.emit(r3, r26) == r14) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0464, code lost:
    
        if (r16.emit(r0, r26) == r14) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x0467, code lost:
    
        r0 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0483, code lost:
    
        if (com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r12, r0, r26) == r14) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x04a0, code lost:
    
        if (com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r12, r0, r26) == r14) goto L210;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [java.lang.Object, kotlinx.serialization.json.Json] */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v29 */
    /* JADX WARN: Type inference failed for: r13v30 */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v4, types: [com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel] */
    /* JADX WARN: Type inference failed for: r13v6, types: [com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel, java.lang.Object, kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r13v7, types: [com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel, java.lang.Object, java.util.List, kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlin.jvm.internal.DefaultConstructorMarker, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v27 */
    /* JADX WARN: Type inference failed for: r15v28 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v30 */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v34 */
    /* JADX WARN: Type inference failed for: r15v35 */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r15v4, types: [com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel] */
    /* JADX WARN: Type inference failed for: r15v5, types: [com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v47 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v48 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v56 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58 */
    /* JADX WARN: Type inference failed for: r2v59, types: [com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel] */
    /* JADX WARN: Type inference failed for: r2v6, types: [int] */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v21, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v40 */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.lang.String] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$confirmAppointment$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
