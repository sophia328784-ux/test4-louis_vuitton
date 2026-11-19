.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->a:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->b:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->b:J

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->d:Ljava/lang/String;

    iget-wide v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f$a;->e:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/generictag/f;->e:J

    return-void
.end method
