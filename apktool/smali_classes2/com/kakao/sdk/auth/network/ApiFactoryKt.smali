.class public abstract Lcom/kakao/sdk/auth/network/ApiFactoryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "auth_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;

.field public static final d:Lkotlin/Lazy;

.field public static final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuth$2;->c:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuth$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kauth$2;->c:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kauth$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->b:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuthNoLog$2;->c:Lcom/kakao/sdk/auth/network/ApiFactoryKt$kapiWithOAuthNoLog$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->c:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$accessTokenInterceptor$2;->c:Lcom/kakao/sdk/auth/network/ApiFactoryKt$accessTokenInterceptor$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->d:Lkotlin/Lazy;

    sget-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt$requiredScopesInterceptor$2;->c:Lcom/kakao/sdk/auth/network/ApiFactoryKt$requiredScopesInterceptor$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->e:Lkotlin/Lazy;

    return-void
.end method
