.class public final Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args$Companion;",
        "",
        "<init>",
        "()V",
        "MEDIA",
        "",
        "deserialize",
        "Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;",
        "bundle",
        "Landroid/os/Bundle;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final deserialize(Landroid/os/Bundle;)Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "com.sightcall.mediacapture.presenter.views.preview.PreviewFragment.MEDIA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sightcall/mediacapture/domain/entities/Media;

    if-eqz p1, :cond_0

    new-instance p0, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;

    invoke-direct {p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment$Args;-><init>(Lcom/sightcall/mediacapture/domain/entities/Media;)V

    return-object p0

    :cond_0
    const-string p1, "A file must be provided, use PreviewFragment.Args"

    invoke-static {p1}, Lmd;->n(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p1, "An argument must be provided, use PreviewFragment.Args"

    invoke-static {p1}, Lmd;->n(Ljava/lang/String;)V

    return-object p0
.end method
