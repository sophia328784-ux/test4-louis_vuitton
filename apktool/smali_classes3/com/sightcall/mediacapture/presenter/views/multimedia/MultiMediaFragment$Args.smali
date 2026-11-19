.class public final Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\t\u001a\u00020\nR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;",
        "",
        "sources",
        "",
        "Lcom/sightcall/mediacapture/presenter/Source;",
        "<init>",
        "(Ljava/util/List;)V",
        "getSources",
        "()Ljava/util/List;",
        "newInstance",
        "Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;

.field private static final MULTI_MEDIA_MODS:Ljava/lang/String; = "com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment.MULTI_MEDIA_MODS"


# instance fields
.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/mediacapture/presenter/Source;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;->Companion:Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/mediacapture/presenter/Source;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;->sources:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getSources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/mediacapture/presenter/Source;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;->sources:Ljava/util/List;

    return-object p0
.end method

.method public final newInstance()Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;
    .locals 3

    new-instance v0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;

    invoke-direct {v0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment$Args;->sources:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "com.sightcall.mediacapture.presenter.views.multimedia.MultiMediaFragment.MULTI_MEDIA_MODS"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
