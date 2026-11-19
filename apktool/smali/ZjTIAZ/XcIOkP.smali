.class public LZjTIAZ/XcIOkP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZjTIAZ/XcIOkP$GznHzJ;
    }
.end annotation


# static fields
.field public static final d:LZjTIAZ/XcIOkP;


# instance fields
.field public a:LZjTIAZ/XcIOkP$GznHzJ;

.field public b:F

.field public final c:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LZjTIAZ/XcIOkP;

    invoke-direct {v0}, LZjTIAZ/XcIOkP;-><init>()V

    sput-object v0, LZjTIAZ/XcIOkP;->d:LZjTIAZ/XcIOkP;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LZjTIAZ/XcIOkP;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LZjTIAZ/XcIOkP$GznHzJ;)V
    .locals 5

    iput-object p1, p0, LZjTIAZ/XcIOkP;->a:LZjTIAZ/XcIOkP$GznHzJ;

    :try_start_0
    new-instance p1, LZjTIAZ/XcIOkP$XcIOkP;

    invoke-direct {p1, p0}, LZjTIAZ/XcIOkP$XcIOkP;-><init>(LZjTIAZ/XcIOkP;)V

    sget-object v0, LZjTIAZ/AcVtYN;->I:LZjTIAZ/AcVtYN;

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object p1, v0, LZjTIAZ/AcVtYN;->D:LZjTIAZ/AcVtYN$eTLkQn;

    iget p1, v0, LZjTIAZ/DQwsTh;->b:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, v0, LZjTIAZ/AcVtYN;->F:Ljava/lang/String;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, LZjTIAZ/DQwsTh;->g(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :goto_0
    iget-object p1, p0, LZjTIAZ/XcIOkP;->a:LZjTIAZ/XcIOkP$GznHzJ;

    if-eqz p1, :cond_2

    iget p0, p0, LZjTIAZ/XcIOkP;->b:F

    invoke-interface {p1, p0}, LZjTIAZ/XcIOkP$GznHzJ;->a(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method
