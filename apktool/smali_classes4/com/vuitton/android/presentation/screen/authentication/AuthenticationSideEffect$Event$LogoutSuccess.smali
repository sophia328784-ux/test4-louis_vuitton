.class public final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;
.super Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogoutSuccess"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;",
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event;",
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
.field public static final a:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;->a:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationSideEffect$Event$LogoutSuccess;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x231536ae

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LogoutSuccess"

    return-object p0
.end method
