.class final Lcom/perfectcorp/common/logger/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/common/logger/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/logger/a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/logger/h;->a:Lcom/perfectcorp/common/logger/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/logger/h;->a:Lcom/perfectcorp/common/logger/a;

    iget-object p0, p0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
