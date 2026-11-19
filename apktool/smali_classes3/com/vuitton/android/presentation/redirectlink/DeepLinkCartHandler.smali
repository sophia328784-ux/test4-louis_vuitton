.class public final Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;",
        "",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;",
        "webAppLinkBuilder",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

.field public final c:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->b:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;->c:Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    return-void
.end method
