.class public final Lcom/perfectcorp/perfectlib/DebugMode$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/DebugMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:Ljava/io/File;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/DebugMode;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/DebugMode;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/DebugMode;-><init>(Lcom/perfectcorp/perfectlib/DebugMode$Builder;)V

    return-object v0
.end method

.method public final disableLogcat()Lcom/perfectcorp/perfectlib/DebugMode$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->a:Z

    return-object p0
.end method

.method public final disabledFileLogger()Lcom/perfectcorp/perfectlib/DebugMode$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->c:Z

    return-object p0
.end method

.method public final enableFileLogger(Ljava/io/File;I)Lcom/perfectcorp/perfectlib/DebugMode$Builder;
    .locals 1

    const-string v0, "logFolder can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->c:Z

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->d:Ljava/io/File;

    iput p2, p0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->e:I

    return-object p0
.end method

.method public final enableLogcat(I)Lcom/perfectcorp/perfectlib/DebugMode$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->a:Z

    iput p1, p0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->b:I

    return-object p0
.end method
