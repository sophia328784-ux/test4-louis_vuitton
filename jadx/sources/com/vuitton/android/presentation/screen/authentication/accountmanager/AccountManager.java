package com.vuitton.android.presentation.screen.authentication.accountmanager;

import android.content.Context;
import androidx.credentials.CreatePasswordRequest;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManager;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.GetPasswordOption;
import androidx.credentials.PasswordCredential;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/AccountManager;", "", "Landroidx/credentials/CredentialManager;", "credentialManager", "<init>", "(Landroidx/credentials/CredentialManager;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AccountManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CredentialManager f53400a;

    public AccountManager(CredentialManager credentialManager) {
        credentialManager.getClass();
        this.f53400a = credentialManager;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Context context, AccountCredentials accountCredentials, ContinuationImpl continuationImpl) {
        AccountManager$registerCredentials$1 accountManager$registerCredentials$1;
        if (continuationImpl instanceof AccountManager$registerCredentials$1) {
            accountManager$registerCredentials$1 = (AccountManager$registerCredentials$1) continuationImpl;
            int i2 = accountManager$registerCredentials$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountManager$registerCredentials$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountManager$registerCredentials$1 = new AccountManager$registerCredentials$1(this, continuationImpl);
            }
        } else {
            accountManager$registerCredentials$1 = new AccountManager$registerCredentials$1(this, continuationImpl);
        }
        Object objB = accountManager$registerCredentials$1.f53401b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountManager$registerCredentials$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                CredentialManager credentialManager = this.f53400a;
                CreatePasswordRequest createPasswordRequest = new CreatePasswordRequest(accountCredentials.f53398a, accountCredentials.f53399b, null, false, false, 28, null);
                accountManager$registerCredentials$1.d = 1;
                objB = credentialManager.b(context, createPasswordRequest, accountManager$registerCredentials$1);
                if (objB == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objB);
            }
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            new Result.Failure(th);
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object b(Context context, ContinuationImpl continuationImpl) {
        AccountManager$retrieveCredentials$1 accountManager$retrieveCredentials$1;
        Object failure;
        if (continuationImpl instanceof AccountManager$retrieveCredentials$1) {
            accountManager$retrieveCredentials$1 = (AccountManager$retrieveCredentials$1) continuationImpl;
            int i2 = accountManager$retrieveCredentials$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                accountManager$retrieveCredentials$1.d = i2 - Integer.MIN_VALUE;
            } else {
                accountManager$retrieveCredentials$1 = new AccountManager$retrieveCredentials$1(this, continuationImpl);
            }
        } else {
            accountManager$retrieveCredentials$1 = new AccountManager$retrieveCredentials$1(this, continuationImpl);
        }
        Object objD = accountManager$retrieveCredentials$1.f53403b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = accountManager$retrieveCredentials$1.d;
        CredentialManagerResult.Failure failure2 = CredentialManagerResult.Failure.f53405a;
        try {
            if (i3 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                CredentialManager credentialManager = this.f53400a;
                GetCredentialRequest getCredentialRequest = new GetCredentialRequest(CollectionsKt.O(new GetPasswordOption(null, false, null, 7, null)), null, false, null, false, 30, null);
                accountManager$retrieveCredentials$1.d = 1;
                objD = credentialManager.d(context, getCredentialRequest, accountManager$retrieveCredentials$1);
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
            Credential credential = ((GetCredentialResponse) objD).f12390a;
            PasswordCredential passwordCredential = credential instanceof PasswordCredential ? (PasswordCredential) credential : null;
            if (passwordCredential == null) {
                return failure2;
            }
            failure = new CredentialManagerResult.Success(new AccountCredentials(passwordCredential.d, passwordCredential.f12395e));
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return Result.a(failure) == null ? failure : failure2;
    }
}
