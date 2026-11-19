.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->c:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->c:J

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->d:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->d:Z

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e$a;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/e;->e:Ljava/lang/String;

    return-void
.end method
