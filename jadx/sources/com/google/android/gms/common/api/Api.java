package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Api<O extends ApiOptions> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractClientBuilder f28972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28973b;

    public static abstract class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        public Client a(Context context, Looper looper, ClientSettings clientSettings, Object obj, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return b(context, looper, clientSettings, obj, (zabk) connectionCallbacks, (zabk) onConnectionFailedListener);
        }

        public Client b(Context context, Looper looper, ClientSettings clientSettings, Object obj, zabk zabkVar, zabk zabkVar2) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    public interface AnyClient {
    }

    public static class AnyClientKey<C extends AnyClient> {
    }

    public interface ApiOptions {
        public static final NoOptions j0 = new NoOptions();

        public interface HasAccountOptions extends HasOptions, NotRequiredOptions {
            Account o1();
        }

        public interface HasGoogleSignInAccountOptions extends HasOptions {
            GoogleSignInAccount h1();
        }

        public interface HasOptions extends ApiOptions {
        }

        public static final class NoOptions implements NotRequiredOptions {
        }

        public interface NotRequiredOptions extends ApiOptions {
        }

        public interface Optional extends HasOptions, NotRequiredOptions {
        }
    }

    public static abstract class BaseClientBuilder<T extends AnyClient, O> {
    }

    public interface Client extends AnyClient {
        void a(String str);

        boolean b();

        String c();

        void d(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks);

        void disconnect();

        boolean e();

        boolean g();

        Set h();

        void i(IAccountAccessor iAccountAccessor, Set set);

        boolean isConnected();

        void j(BaseGmsClient.SignOutCallbacks signOutCallbacks);

        int l();

        Feature[] m();

        String n();
    }

    public static final class ClientKey<C extends Client> extends AnyClientKey<C> {
    }

    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey) {
        Preconditions.i(abstractClientBuilder, "Cannot construct an Api with a null ClientBuilder");
        Preconditions.i(clientKey, "Cannot construct an Api with a null ClientKey");
        this.f28973b = str;
        this.f28972a = abstractClientBuilder;
    }
}
