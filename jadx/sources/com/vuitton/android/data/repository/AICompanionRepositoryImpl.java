package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.aicompanion.AICompanionLocalDataSource;
import com.vuitton.android.data.datasource.aicompanion.AICompanionRemoteDataSource;
import com.vuitton.android.data.dto.aicompanion.ChatRequestDto;
import com.vuitton.android.data.dto.aicompanion.ChatResponseDto;
import com.vuitton.android.data.dto.aicompanion.ChatSessionDto;
import com.vuitton.android.data.dto.aicompanion.mapper.ChatMapperKt;
import com.vuitton.android.domain.repository.AICompanionRepository;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.model.domain.error.aicompanion.AICompanionError;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRequest;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatResponse;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.md;
import defpackage.v40;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/AICompanionRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AICompanionRepository;", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;", "aiCompanionLocalDataSource", "Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;", "aiCompanionRemoteDataSource", "<init>", "(Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionLocalDataSource;Lcom/vuitton/android/data/datasource/aicompanion/AICompanionRemoteDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AICompanionRepositoryImpl implements AICompanionRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AuthTokenRepository f47102a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AICompanionLocalDataSource f47103b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AICompanionRemoteDataSource f47104c;

    @Inject
    public AICompanionRepositoryImpl(AuthTokenRepository authTokenRepository, AICompanionLocalDataSource aICompanionLocalDataSource, AICompanionRemoteDataSource aICompanionRemoteDataSource) {
        authTokenRepository.getClass();
        aICompanionLocalDataSource.getClass();
        aICompanionRemoteDataSource.getClass();
        this.f47102a = authTokenRepository;
        this.f47103b = aICompanionLocalDataSource;
        this.f47104c = aICompanionRemoteDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object a(boolean z, ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1 aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1;
        Object failure;
        if (continuationImpl instanceof AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1) {
            aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1 = (AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1 = new AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1 = new AICompanionRepositoryImpl$updateAICompanionVideoVisibility$1(this, continuationImpl);
        }
        Object obj = aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1.f47118b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AICompanionLocalDataSource aICompanionLocalDataSource = this.f47103b;
                aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1.d = 1;
                if (aICompanionLocalDataSource.h(z, aICompanionRepositoryImpl$updateAICompanionVideoVisibility$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object b(String str, String str2, ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$updateSessionIdForHistory$1 aICompanionRepositoryImpl$updateSessionIdForHistory$1;
        if (continuationImpl instanceof AICompanionRepositoryImpl$updateSessionIdForHistory$1) {
            aICompanionRepositoryImpl$updateSessionIdForHistory$1 = (AICompanionRepositoryImpl$updateSessionIdForHistory$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$updateSessionIdForHistory$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$updateSessionIdForHistory$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$updateSessionIdForHistory$1 = new AICompanionRepositoryImpl$updateSessionIdForHistory$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$updateSessionIdForHistory$1 = new AICompanionRepositoryImpl$updateSessionIdForHistory$1(this, continuationImpl);
        }
        Object obj = aICompanionRepositoryImpl$updateSessionIdForHistory$1.f47120b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$updateSessionIdForHistory$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            aICompanionRepositoryImpl$updateSessionIdForHistory$1.d = 1;
            Object objG = this.f47103b.g(str, str2, aICompanionRepositoryImpl$updateSessionIdForHistory$1);
            return objG == coroutineSingletons ? coroutineSingletons : objG;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object c(ChatRequest chatRequest, String str, ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$postChatMessage$1 aICompanionRepositoryImpl$postChatMessage$1;
        Object failure;
        if (continuationImpl instanceof AICompanionRepositoryImpl$postChatMessage$1) {
            aICompanionRepositoryImpl$postChatMessage$1 = (AICompanionRepositoryImpl$postChatMessage$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$postChatMessage$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$postChatMessage$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$postChatMessage$1 = new AICompanionRepositoryImpl$postChatMessage$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$postChatMessage$1 = new AICompanionRepositoryImpl$postChatMessage$1(this, continuationImpl);
        }
        Object objPostChatMessage = aICompanionRepositoryImpl$postChatMessage$1.f47113b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$postChatMessage$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objPostChatMessage);
                Result.Companion companion = Result.INSTANCE;
                AICompanionRemoteDataSource aICompanionRemoteDataSource = this.f47104c;
                chatRequest.getClass();
                ChatRequestDto chatRequestDto = new ChatRequestDto(chatRequest.f66368b);
                String str2 = chatRequest.f66367a;
                aICompanionRepositoryImpl$postChatMessage$1.d = 1;
                objPostChatMessage = aICompanionRemoteDataSource.f43752a.postChatMessage(str2, str, chatRequestDto, aICompanionRepositoryImpl$postChatMessage$1);
                if (objPostChatMessage == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objPostChatMessage);
            }
            ChatResponseDto chatResponseDto = (ChatResponseDto) objPostChatMessage;
            chatResponseDto.getClass();
            failure = new Result(new ChatResponse(chatResponseDto.f44488a, ChatMapperKt.a(chatResponseDto.f44489b)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        try {
            if (!(thA2 instanceof HttpException) || !ArraysKt.Z(new Integer[]{new Integer(403), new Integer(404)}).contains(new Integer(((HttpException) thA2).f79346b))) {
                throw thA2;
            }
            String str3 = ((HttpException) thA2).f79347c;
            str3.getClass();
            throw new AICompanionError.IdRejected(str3);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object d(ChatHistory chatHistory, ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$saveSessionForHistory$1 aICompanionRepositoryImpl$saveSessionForHistory$1;
        if (continuationImpl instanceof AICompanionRepositoryImpl$saveSessionForHistory$1) {
            aICompanionRepositoryImpl$saveSessionForHistory$1 = (AICompanionRepositoryImpl$saveSessionForHistory$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$saveSessionForHistory$1.f47117e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$saveSessionForHistory$1.f47117e = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$saveSessionForHistory$1 = new AICompanionRepositoryImpl$saveSessionForHistory$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$saveSessionForHistory$1 = new AICompanionRepositoryImpl$saveSessionForHistory$1(this, continuationImpl);
        }
        Object objD = aICompanionRepositoryImpl$saveSessionForHistory$1.f47116c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$saveSessionForHistory$1.f47117e;
        if (i3 == 0) {
            ResultKt.b(objD);
            aICompanionRepositoryImpl$saveSessionForHistory$1.f47115b = chatHistory;
            aICompanionRepositoryImpl$saveSessionForHistory$1.f47117e = 1;
            objD = this.f47102a.d(aICompanionRepositoryImpl$saveSessionForHistory$1);
            if (objD != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 == 2 || i3 == 3) {
                ResultKt.b(objD);
                return ((Result) objD).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        chatHistory = aICompanionRepositoryImpl$saveSessionForHistory$1.f47115b;
        ResultKt.b(objD);
        AuthToken authToken = (AuthToken) objD;
        boolean z = authToken instanceof AuthToken.Twist.Guest;
        AICompanionLocalDataSource aICompanionLocalDataSource = this.f47103b;
        if (z) {
            String str = ((AuthToken.Twist.Guest) authToken).f66593b;
            aICompanionRepositoryImpl$saveSessionForHistory$1.f47115b = null;
            aICompanionRepositoryImpl$saveSessionForHistory$1.f47117e = 2;
            Object objF = aICompanionLocalDataSource.f(chatHistory, str, aICompanionRepositoryImpl$saveSessionForHistory$1);
            if (objF != coroutineSingletons) {
                return objF;
            }
        } else {
            if (!(authToken instanceof AuthToken.Twist.User)) {
                if (Intrinsics.c(authToken, AuthToken.None.f66591a) || (authToken instanceof AuthToken.Atg)) {
                    Result.Companion companion = Result.INSTANCE;
                    return new Result.Failure(new IllegalStateException("Should be Twist-authenticated"));
                }
                v40.g();
                return null;
            }
            String str2 = ((AuthToken.Twist.User) authToken).f66594a;
            aICompanionRepositoryImpl$saveSessionForHistory$1.f47115b = null;
            aICompanionRepositoryImpl$saveSessionForHistory$1.f47117e = 3;
            Object objE = aICompanionLocalDataSource.e(chatHistory, str2, aICompanionRepositoryImpl$saveSessionForHistory$1);
            if (objE != coroutineSingletons) {
                return objE;
            }
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object e(ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$getSessionHistoryList$1 aICompanionRepositoryImpl$getSessionHistoryList$1;
        if (continuationImpl instanceof AICompanionRepositoryImpl$getSessionHistoryList$1) {
            aICompanionRepositoryImpl$getSessionHistoryList$1 = (AICompanionRepositoryImpl$getSessionHistoryList$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$getSessionHistoryList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$getSessionHistoryList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$getSessionHistoryList$1 = new AICompanionRepositoryImpl$getSessionHistoryList$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$getSessionHistoryList$1 = new AICompanionRepositoryImpl$getSessionHistoryList$1(this, continuationImpl);
        }
        Object objD = aICompanionRepositoryImpl$getSessionHistoryList$1.f47109b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$getSessionHistoryList$1.d;
        if (i3 == 0) {
            ResultKt.b(objD);
            aICompanionRepositoryImpl$getSessionHistoryList$1.d = 1;
            objD = this.f47102a.d(aICompanionRepositoryImpl$getSessionHistoryList$1);
            if (objD != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 == 2 || i3 == 3) {
                ResultKt.b(objD);
                return ((Result) objD).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objD);
        AuthToken authToken = (AuthToken) objD;
        boolean z = authToken instanceof AuthToken.Twist.Guest;
        AICompanionLocalDataSource aICompanionLocalDataSource = this.f47103b;
        if (z) {
            String str = ((AuthToken.Twist.Guest) authToken).f66593b;
            aICompanionRepositoryImpl$getSessionHistoryList$1.d = 2;
            Object objC = aICompanionLocalDataSource.c(str, aICompanionRepositoryImpl$getSessionHistoryList$1);
            if (objC != coroutineSingletons) {
                return objC;
            }
        } else {
            if (!(authToken instanceof AuthToken.Twist.User)) {
                if (Intrinsics.c(authToken, AuthToken.None.f66591a) || (authToken instanceof AuthToken.Atg)) {
                    Result.Companion companion = Result.INSTANCE;
                    return new Result.Failure(new IllegalStateException("Should be Twist-authenticated"));
                }
                v40.g();
                return null;
            }
            String str2 = ((AuthToken.Twist.User) authToken).f66594a;
            aICompanionRepositoryImpl$getSessionHistoryList$1.d = 3;
            Object objB = aICompanionLocalDataSource.b(str2, aICompanionRepositoryImpl$getSessionHistoryList$1);
            if (objB != coroutineSingletons) {
                return objB;
            }
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object f(String str, ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$deleteSessionFromHistory$1 aICompanionRepositoryImpl$deleteSessionFromHistory$1;
        if (continuationImpl instanceof AICompanionRepositoryImpl$deleteSessionFromHistory$1) {
            aICompanionRepositoryImpl$deleteSessionFromHistory$1 = (AICompanionRepositoryImpl$deleteSessionFromHistory$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$deleteSessionFromHistory$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$deleteSessionFromHistory$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$deleteSessionFromHistory$1 = new AICompanionRepositoryImpl$deleteSessionFromHistory$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$deleteSessionFromHistory$1 = new AICompanionRepositoryImpl$deleteSessionFromHistory$1(this, continuationImpl);
        }
        Object obj = aICompanionRepositoryImpl$deleteSessionFromHistory$1.f47105b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$deleteSessionFromHistory$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            aICompanionRepositoryImpl$deleteSessionFromHistory$1.d = 1;
            Object objA = this.f47103b.a(str, aICompanionRepositoryImpl$deleteSessionFromHistory$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object g(boolean z) throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f47103b.d.setValue(Boolean.valueOf(z));
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object h(ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1 aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1;
        Object failure;
        if (continuationImpl instanceof AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1) {
            aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1 = (AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1 = new AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1 = new AICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1(this, continuationImpl);
        }
        Object objD = aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1.f47111b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                AICompanionLocalDataSource aICompanionLocalDataSource = this.f47103b;
                aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1.d = 1;
                objD = aICompanionLocalDataSource.d(aICompanionRepositoryImpl$hasAICompanionVideoBeenDisplayed$1);
                if (objD == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objD);
            }
            Boolean bool = (Boolean) objD;
            bool.getClass();
            failure = new Result(bool);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Object i(String str, ContinuationImpl continuationImpl) {
        AICompanionRepositoryImpl$getChatSessionById$1 aICompanionRepositoryImpl$getChatSessionById$1;
        Object failure;
        if (continuationImpl instanceof AICompanionRepositoryImpl$getChatSessionById$1) {
            aICompanionRepositoryImpl$getChatSessionById$1 = (AICompanionRepositoryImpl$getChatSessionById$1) continuationImpl;
            int i2 = aICompanionRepositoryImpl$getChatSessionById$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aICompanionRepositoryImpl$getChatSessionById$1.d = i2 - Integer.MIN_VALUE;
            } else {
                aICompanionRepositoryImpl$getChatSessionById$1 = new AICompanionRepositoryImpl$getChatSessionById$1(this, continuationImpl);
            }
        } else {
            aICompanionRepositoryImpl$getChatSessionById$1 = new AICompanionRepositoryImpl$getChatSessionById$1(this, continuationImpl);
        }
        Object chatSessionById = aICompanionRepositoryImpl$getChatSessionById$1.f47107b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = aICompanionRepositoryImpl$getChatSessionById$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(chatSessionById);
                Result.Companion companion = Result.INSTANCE;
                AICompanionRemoteDataSource aICompanionRemoteDataSource = this.f47104c;
                aICompanionRepositoryImpl$getChatSessionById$1.d = 1;
                chatSessionById = aICompanionRemoteDataSource.f43752a.getChatSessionById(str, aICompanionRepositoryImpl$getChatSessionById$1);
                if (chatSessionById == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(chatSessionById);
            }
            failure = new Result(ChatMapperKt.b((ChatSessionDto) chatSessionById));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    @Override // com.vuitton.android.domain.repository.AICompanionRepository
    public final Flow j() {
        return FlowKt.b(this.f47103b.d);
    }
}
