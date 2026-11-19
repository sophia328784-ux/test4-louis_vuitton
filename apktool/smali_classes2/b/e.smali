.class public Lb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/e;->c:Ljava/lang/String;

    const-string v1, "0.0.0"

    iput-object v1, p0, Lb/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/e;->e:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lb/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/e;->g:Ljava/lang/String;

    return-void
.end method
