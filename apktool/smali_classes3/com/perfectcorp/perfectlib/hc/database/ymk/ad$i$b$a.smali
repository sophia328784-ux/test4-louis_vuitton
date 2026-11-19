.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final editMode:Z

.field public final liveMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;->editMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;->liveMode:Z

    return-void
.end method
