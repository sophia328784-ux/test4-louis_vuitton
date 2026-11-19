.class public abstract Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass2dError;,
        Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;,
        Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPassMultipartError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0003\u0003\u0004\u0005\u0082\u0001\u0003\u0006\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "LvPassMultipartError",
        "LvPass2dError",
        "LvPass3dError",
        "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass2dError;",
        "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPass3dError;",
        "Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError$LvPassMultipartError;",
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
.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move-object p1, p3

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/error/lvpass/LvPassError;->b:Ljava/lang/String;

    return-object p0
.end method
