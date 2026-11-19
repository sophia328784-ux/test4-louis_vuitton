.class public final Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/api/Headers$Authorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0003H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;",
        "",
        "key",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "toString",
        "Companion",
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
.field public static final Companion:Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;->Companion:Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;->key:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;->Companion:Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey$Companion;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/api/Headers$Authorization$ApiKey;->key:Ljava/lang/String;

    const-string v0, "Apikey "

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
