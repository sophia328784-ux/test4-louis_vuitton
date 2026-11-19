.class final Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuffer;

.field private b:Ljava/lang/String;

.field private c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    invoke-direct {v0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    return-object p0
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->b:Ljava/lang/String;

    const-string p1, "Time"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Trigger"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Once"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;)V

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Enable"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;)V

    goto/16 :goto_0

    :cond_3
    sget-object p1, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "DaysSpecial"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "Context"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "Volume"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(I)V

    goto :goto_0

    :cond_7
    const-string p1, "Method"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayUrl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    sget-object p2, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    invoke-virtual {p1, p2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;)V

    goto :goto_0

    :cond_8
    const-string p2, "RunScript"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    sget-object p2, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    invoke-virtual {p1, p2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;)V

    goto :goto_0

    :cond_9
    const-string p2, "PlayQueue"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    sget-object p2, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;->d:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    invoke-virtual {p1, p2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;)V

    goto :goto_0

    :cond_a
    const-string p2, "Stop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    sget-object p2, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;->f:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    invoke-virtual {p1, p2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;)V

    goto :goto_0

    :cond_b
    const-string p1, "Name"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    invoke-virtual {p2, p1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->c(Ljava/lang/String;)V

    :cond_c
    :goto_0
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/c$a;->a:Ljava/lang/StringBuffer;

    return-void
.end method
