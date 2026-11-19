.class public final Lcom/sightcall/mediacapture/presenter/Event$OnPreview;
.super Lcom/sightcall/mediacapture/presenter/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnPreview"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/Event$OnPreview;",
        "Lcom/sightcall/mediacapture/presenter/Event;",
        "media",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "collimator",
        "LSCCollimator;",
        "<init>",
        "(Lcom/sightcall/mediacapture/domain/entities/Media;LSCCollimator;)V",
        "getMedia",
        "()Lcom/sightcall/mediacapture/domain/entities/Media;",
        "getCollimator",
        "()LSCCollimator;",
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
.field private final collimator:LSCCollimator;

.field private final media:Lcom/sightcall/mediacapture/domain/entities/Media;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/domain/entities/Media;LSCCollimator;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;->media:Lcom/sightcall/mediacapture/domain/entities/Media;

    iput-object p2, p0, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;->collimator:LSCCollimator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/mediacapture/domain/entities/Media;LSCCollimator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;-><init>(Lcom/sightcall/mediacapture/domain/entities/Media;LSCCollimator;)V

    return-void
.end method


# virtual methods
.method public final getCollimator()LSCCollimator;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;->collimator:LSCCollimator;

    return-object p0
.end method

.method public final getMedia()Lcom/sightcall/mediacapture/domain/entities/Media;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;->media:Lcom/sightcall/mediacapture/domain/entities/Media;

    return-object p0
.end method
