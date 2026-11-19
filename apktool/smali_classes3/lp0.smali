.class public final synthetic Llp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic b:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

.field public final synthetic c:Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llp0;->b:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    iput-object p2, p0, Llp0;->c:Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Llp0;->b:Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;

    iget-object p0, p0, Llp0;->c:Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;

    invoke-static {v0, p0, p1}, Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;->Q(Lcom/sightcall/mediacapture/databinding/FragmentPreviewBinding;Lcom/sightcall/mediacapture/presenter/views/preview/PreviewFragment;Landroid/media/MediaPlayer;)V

    return-void
.end method
