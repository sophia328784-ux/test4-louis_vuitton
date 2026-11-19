.class public final Lcom/perfectcorp/perfectlib/ph/utility/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/utility/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->c:Ljava/lang/String;

    return-void
.end method
