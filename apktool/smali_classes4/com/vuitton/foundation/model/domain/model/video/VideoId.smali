.class public abstract Lcom/vuitton/foundation/model/domain/model/video/VideoId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/video/VideoId;",
        "",
        "Companion",
        "value",
        "",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    const-string v0, ""

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->b:Ljava/lang/String;

    return-void
.end method
