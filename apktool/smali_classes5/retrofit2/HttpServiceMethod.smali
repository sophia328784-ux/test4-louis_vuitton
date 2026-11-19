.class abstract Lretrofit2/HttpServiceMethod;
.super Lretrofit2/ServiceMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/HttpServiceMethod$SuspendForBody;,
        Lretrofit2/HttpServiceMethod$SuspendForResponse;,
        Lretrofit2/HttpServiceMethod$CallAdapted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ServiceMethod<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field public final a:Lretrofit2/RequestFactory;

.field public final b:Lokhttp3/Call$Factory;

.field public final c:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/HttpServiceMethod;->a:Lretrofit2/RequestFactory;

    iput-object p2, p0, Lretrofit2/HttpServiceMethod;->b:Lokhttp3/Call$Factory;

    iput-object p3, p0, Lretrofit2/HttpServiceMethod;->c:Lretrofit2/Converter;

    return-void
.end method


# virtual methods
.method public abstract b(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
