.class public Lcom/dynatrace/android/callback/OkHeaderInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final a:Lcom/dynatrace/android/callback/OkHeaderInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dynatrace/android/callback/OkHeaderInterceptor;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dynatrace/android/callback/OkHeaderInterceptor;->a:Lcom/dynatrace/android/callback/OkHeaderInterceptor;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object p0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    iget-object v0, p0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v0}, Lokhttp3/Headers;->i()Ljava/util/TreeMap;

    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    iget-object p1, p0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {p1}, Lokhttp3/Headers;->i()Ljava/util/TreeMap;

    const-string p1, "okhttp headers tracked"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-object p0
.end method
