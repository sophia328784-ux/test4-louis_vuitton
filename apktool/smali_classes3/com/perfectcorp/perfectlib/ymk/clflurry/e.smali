.class final enum Lcom/perfectcorp/perfectlib/ymk/clflurry/e;
.super Lcom/perfectcorp/perfectlib/ymk/clflurry/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WTF"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 7
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    sget-object p0, Lcom/perfectcorp/common/utility/Log$c;->a:Lcom/perfectcorp/common/utility/Log$c;

    invoke-interface {p0, p1, p2, p3}, Lcom/perfectcorp/common/utility/Log$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method
