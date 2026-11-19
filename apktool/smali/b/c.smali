.class public Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lb/e;

.field public final f:Lb/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb/c;->b:Ljava/lang/String;

    const-string v0, "unkown"

    iput-object v0, p0, Lb/c;->c:Ljava/lang/String;

    const-string v0, "mask"

    iput-object v0, p0, Lb/c;->d:Ljava/lang/String;

    new-instance v0, Lb/e;

    invoke-direct {v0}, Lb/e;-><init>()V

    iput-object v0, p0, Lb/c;->e:Lb/e;

    new-instance v0, Lb/d;

    invoke-direct {v0}, Lb/d;-><init>()V

    iput-object v0, p0, Lb/c;->f:Lb/d;

    return-void
.end method
