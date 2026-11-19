.class public Lcom/batch/android/h0/c;
.super Lcom/batch/android/h0/e;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/h0/c$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/batch/android/f0/a;

.field public k:J

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/batch/android/f0/b;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:I

.field public r:Lcom/batch/android/h0/c$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/h0/e;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/batch/android/h0/c;->o:Ljava/util/List;

    sget-object p1, Lcom/batch/android/h0/c$a;->b:Lcom/batch/android/h0/c$a;

    iput-object p1, p0, Lcom/batch/android/h0/c;->r:Lcom/batch/android/h0/c$a;

    return-void
.end method
