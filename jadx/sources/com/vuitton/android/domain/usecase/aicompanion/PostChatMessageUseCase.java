package com.vuitton.android.domain.usecase.aicompanion;

import com.vuitton.android.domain.repository.AICompanionRepository;
import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRequest;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatResponse;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;", "", "Lcom/vuitton/android/domain/repository/AICompanionRepository;", "aiCompanionRepository", "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "analyticsWrapperRepository", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/domain/repository/AICompanionRepository;Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PostChatMessageUseCase {
    public static final String d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AICompanionRepository f49158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsWrapperRepository f49159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f49160c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase$Companion;", "", "", "TAG", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        d = Reflection.f71922a.b(PostChatMessageUseCase.class).B();
    }

    @Inject
    public PostChatMessageUseCase(AICompanionRepository aICompanionRepository, AnalyticsWrapperRepository analyticsWrapperRepository, Logger logger) {
        aICompanionRepository.getClass();
        analyticsWrapperRepository.getClass();
        logger.getClass();
        this.f49158a = aICompanionRepository;
        this.f49159b = analyticsWrapperRepository;
        this.f49160c = logger;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ChatRequest chatRequest, ContinuationImpl continuationImpl) {
        PostChatMessageUseCase$run$1 postChatMessageUseCase$run$1;
        Object objC;
        String str;
        if (continuationImpl instanceof PostChatMessageUseCase$run$1) {
            postChatMessageUseCase$run$1 = (PostChatMessageUseCase$run$1) continuationImpl;
            int i2 = postChatMessageUseCase$run$1.f49164f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                postChatMessageUseCase$run$1.f49164f = i2 - Integer.MIN_VALUE;
            } else {
                postChatMessageUseCase$run$1 = new PostChatMessageUseCase$run$1(this, continuationImpl);
            }
        } else {
            postChatMessageUseCase$run$1 = new PostChatMessageUseCase$run$1(this, continuationImpl);
        }
        Object objF = postChatMessageUseCase$run$1.d;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = postChatMessageUseCase$run$1.f49164f;
        if (i3 == 0) {
            ResultKt.b(objF);
            postChatMessageUseCase$run$1.f49161b = chatRequest;
            postChatMessageUseCase$run$1.f49164f = 1;
            objF = this.f49159b.f(postChatMessageUseCase$run$1);
            if (objF != obj) {
            }
            return obj;
        }
        if (i3 == 1) {
            chatRequest = postChatMessageUseCase$run$1.f49161b;
            ResultKt.b(objF);
        } else {
            if (i3 != 2) {
                if (i3 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Object obj2 = postChatMessageUseCase$run$1.f49162c;
                ResultKt.b(objF);
                return obj2;
            }
            chatRequest = postChatMessageUseCase$run$1.f49161b;
            ResultKt.b(objF);
            objC = ((Result) objF).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objC instanceof Result.Failure)) {
            str = ((ChatResponse) objC).f66369a;
            postChatMessageUseCase$run$1.f49161b = null;
            postChatMessageUseCase$run$1.f49162c = objC;
            postChatMessageUseCase$run$1.f49164f = 3;
            if (b(chatRequest, str, postChatMessageUseCase$run$1) == obj) {
                return obj;
            }
        }
        return objC;
        postChatMessageUseCase$run$1.f49161b = chatRequest;
        postChatMessageUseCase$run$1.f49164f = 2;
        objC = this.f49158a.c(chatRequest, (String) objF, postChatMessageUseCase$run$1);
        if (objC != obj) {
            Result.Companion companion2 = Result.INSTANCE;
            if (!(objC instanceof Result.Failure)) {
                str = ((ChatResponse) objC).f66369a;
                postChatMessageUseCase$run$1.f49161b = null;
                postChatMessageUseCase$run$1.f49162c = objC;
                postChatMessageUseCase$run$1.f49164f = 3;
                if (b(chatRequest, str, postChatMessageUseCase$run$1) == obj) {
                }
            }
            return objC;
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
    
        if (r13 == r9) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0081, code lost:
    
        if (r13 == r9) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.vuitton.foundation.model.domain.model.aicompanion.ChatRequest r14, java.lang.String r15, kotlin.coroutines.jvm.internal.ContinuationImpl r16) {
        /*
            r13 = this;
            r0 = r16
            boolean r1 = r0 instanceof com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase$syncSessionHistory$1
            if (r1 == 0) goto L16
            r1 = r0
            com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase$syncSessionHistory$1 r1 = (com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase$syncSessionHistory$1) r1
            int r2 = r1.d
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.d = r2
        L14:
            r8 = r1
            goto L1c
        L16:
            com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase$syncSessionHistory$1 r1 = new com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase$syncSessionHistory$1
            r1.<init>(r13, r0)
            goto L14
        L1c:
            java.lang.Object r0 = r8.f49165b
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.d
            java.lang.String r10 = com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase.d
            com.vuitton.foundation.logger.Logger r11 = r13.f49160c
            r2 = 2
            r12 = 1
            if (r1 == 0) goto L45
            if (r1 == r12) goto L3d
            if (r1 != r2) goto L36
            kotlin.ResultKt.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r13 = r0.f71708b
            goto L84
        L36:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            r13 = 0
            return r13
        L3d:
            kotlin.ResultKt.b(r0)
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r13 = r0.f71708b
            goto L65
        L45:
            kotlin.ResultKt.b(r0)
            java.lang.String r0 = r14.f66367a
            com.vuitton.android.domain.repository.AICompanionRepository r13 = r13.f49158a
            if (r0 != 0) goto L75
            com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory r0 = new com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory
            java.lang.String r2 = r14.f66368b
            r6 = 12
            r7 = 0
            r3 = 0
            r5 = 0
            r1 = r15
            r0.<init>(r1, r2, r3, r5, r6, r7)
            r8.d = r12
            java.lang.Object r13 = r13.d(r0, r8)
            if (r13 != r9) goto L65
            goto L83
        L65:
            java.lang.Throwable r13 = kotlin.Result.a(r13)
            if (r13 == 0) goto L93
            java.lang.String r14 = r13.getMessage()
            java.lang.String r0 = "Error saving chat session in history: "
            defpackage.a.y(r0, r14, r11, r10, r13)
            goto L93
        L75:
            boolean r14 = r0.equals(r15)
            if (r14 != 0) goto L93
            r8.d = r2
            java.lang.Object r13 = r13.b(r0, r15, r8)
            if (r13 != r9) goto L84
        L83:
            return r9
        L84:
            java.lang.Throwable r13 = kotlin.Result.a(r13)
            if (r13 == 0) goto L93
            java.lang.String r14 = r13.getMessage()
            java.lang.String r0 = "Error updating chat session id in history: "
            defpackage.a.y(r0, r14, r11, r10, r13)
        L93:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase.b(com.vuitton.foundation.model.domain.model.aicompanion.ChatRequest, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
