.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;
    }
.end annotation


# instance fields
.field public final extraskuinfo:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;

.field public final room:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$d;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$d;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;->room:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$e$d;

    new-instance v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b;->extraskuinfo:Lcom/perfectcorp/perfectlib/hc/database/ymk/ad$i$b$a;

    return-void
.end method
