.class final enum Lcom/perfectcorp/uma/f;
.super Lcom/perfectcorp/uma/d$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "WEEKLY"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;)V
    .locals 1

    const/4 p0, 0x7

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
