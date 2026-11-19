.class public Lcom/sightcall/universal/util/EmptyLink;
.super Lcom/sightcall/universal/util/Deeplink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/EmptyLink$Instance;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sightcall/universal/util/EmptyLink;",
        "Lcom/sightcall/universal/util/Deeplink;",
        "<init>",
        "()V",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
        "Instance",
        "sdk_installedRelease"
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
.field public static final Instance:Lcom/sightcall/universal/util/EmptyLink$Instance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/util/EmptyLink$Instance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/util/EmptyLink$Instance;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/util/EmptyLink;->Instance:Lcom/sightcall/universal/util/EmptyLink$Instance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sightcall/universal/util/Deeplink;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/util/EmptyLink;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/Deeplink;->execute(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sightcall/universal/util/Utils;->startLaunchIntent(Landroid/content/Context;)V

    return-void
.end method
