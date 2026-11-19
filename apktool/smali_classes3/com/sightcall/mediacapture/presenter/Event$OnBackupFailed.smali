.class public final Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;
.super Lcom/sightcall/mediacapture/presenter/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnBackupFailed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\'\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\n\u0010\u0006\u001a\u00060\u0007j\u0002`\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u0006\u001a\u00060\u0007j\u0002`\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;",
        "Lcom/sightcall/mediacapture/presenter/Event;",
        "result",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "<init>",
        "(Lcom/sightcall/pratik/Result;Ljava/lang/Exception;)V",
        "getResult",
        "()Lcom/sightcall/pratik/Result;",
        "getError",
        "()Ljava/lang/Exception;",
        "lib_release"
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
.field private final error:Ljava/lang/Exception;

.field private final result:Lcom/sightcall/pratik/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/pratik/Result;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;->result:Lcom/sightcall/pratik/Result;

    iput-object p2, p0, Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;->error:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getError()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;->error:Ljava/lang/Exception;

    return-object p0
.end method

.method public final getResult()Lcom/sightcall/pratik/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/Event$OnBackupFailed;->result:Lcom/sightcall/pratik/Result;

    return-object p0
.end method
