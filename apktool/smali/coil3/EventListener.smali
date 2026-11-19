.class public abstract Lcoil3/EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/request/ImageRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/EventListener$Companion;,
        Lcoil3/EventListener$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcoil3/EventListener;",
        "Lcoil3/request/ImageRequest$Listener;",
        "<init>",
        "()V",
        "Factory",
        "Companion",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcoil3/EventListener$Companion$NONE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil3/EventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/EventListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcoil3/EventListener$Companion$NONE$1;

    invoke-direct {v0}, Lcoil3/EventListener;-><init>()V

    sput-object v0, Lcoil3/EventListener;->a:Lcoil3/EventListener$Companion$NONE$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/request/SuccessResult;)V
    .locals 0

    return-void
.end method

.method public final b(Lcoil3/request/ErrorResult;)V
    .locals 0

    return-void
.end method

.method public final onCancel()V
    .locals 0

    return-void
.end method
