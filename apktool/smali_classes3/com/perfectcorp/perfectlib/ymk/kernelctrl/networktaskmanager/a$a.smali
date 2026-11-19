.class final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;->b:Z

    return-void
.end method
