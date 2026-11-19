.class public final Lcom/perfectcorp/perfectlib/ph/template/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final lastModified:J

.field final payload:Lcom/perfectcorp/perfectlib/ph/template/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$c;->id:Ljava/lang/String;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/ph/template/b$a;-><init>(I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$c;->payload:Lcom/perfectcorp/perfectlib/ph/template/b$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/template/b$c;->lastModified:J

    return-void
.end method
