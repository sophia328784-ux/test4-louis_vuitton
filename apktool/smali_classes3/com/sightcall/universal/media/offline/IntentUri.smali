.class public Lcom/sightcall/universal/media/offline/IntentUri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public imageUri:Landroid/net/Uri;

.field public intent:Landroid/content/Intent;

.field public videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/offline/IntentUri;->intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/sightcall/universal/media/offline/IntentUri;->imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sightcall/universal/media/offline/IntentUri;->videoUri:Landroid/net/Uri;

    return-void
.end method
