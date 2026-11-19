.class public Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->a:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->b:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->b:J

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->c:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c$a;->d:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/c;->d:Z

    return-void
.end method
