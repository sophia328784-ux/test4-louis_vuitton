.class public final Lcom/sightcall/mediacapture/presenter/Event$OnResult;
.super Lcom/sightcall/mediacapture/presenter/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/Event$OnResult;",
        "Lcom/sightcall/mediacapture/presenter/Event;",
        "result",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
        "<init>",
        "(Lcom/sightcall/pratik/Result;)V",
        "getResult",
        "()Lcom/sightcall/pratik/Result;",
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
.method public constructor <init>(Lcom/sightcall/pratik/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/Event$OnResult;->result:Lcom/sightcall/pratik/Result;

    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/Event$OnResult;->result:Lcom/sightcall/pratik/Result;

    return-object p0
.end method
