.class public final Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;
.super Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdatePasswordFailed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;",
        "Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException;",
        "Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;",
        "passwordErrorReason",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;->b:Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;

    return-void
.end method
