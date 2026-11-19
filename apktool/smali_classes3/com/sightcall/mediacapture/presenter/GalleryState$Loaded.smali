.class public final Lcom/sightcall/mediacapture/presenter/GalleryState$Loaded;
.super Lcom/sightcall/mediacapture/presenter/GalleryState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/GalleryState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loaded"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/GalleryState$Loaded;",
        "Lcom/sightcall/mediacapture/presenter/GalleryState;",
        "medias",
        "",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "<init>",
        "(Ljava/util/List;)V",
        "getMedias",
        "()Ljava/util/List;",
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
.field private final medias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/mediacapture/presenter/GalleryState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/GalleryState$Loaded;->medias:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getMedias()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/GalleryState$Loaded;->medias:Ljava/util/List;

    return-object p0
.end method
