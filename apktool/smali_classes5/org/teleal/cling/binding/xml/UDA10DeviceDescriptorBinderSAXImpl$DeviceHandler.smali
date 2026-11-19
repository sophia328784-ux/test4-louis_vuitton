.class public Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;
.super Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler<",
        "Lorg/teleal/cling/binding/staging/MutableDevice;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;->device:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/binding/staging/MutableDevice;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    return-void
.end method


# virtual methods
.method public final b(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;)V
    .locals 1

    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/model/types/DLNACaps;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNACaps;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->p:Lorg/teleal/cling/model/types/DLNACaps;

    return-void

    :pswitch_1
    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p1, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->o:Ljava/util/ArrayList;

    invoke-static {p0}, Lorg/teleal/cling/model/types/DLNADoc;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/DLNADoc;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/teleal/cling/model/types/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl;->b:Ljava/util/logging/Logger;

    const-string v0, "Invalid X_DLNADOC value, ignoring value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/model/types/UDN;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/UDN;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->a:Lorg/teleal/cling/model/types/UDN;

    return-void

    :pswitch_3
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->l:Ljava/lang/String;

    return-void

    :pswitch_4
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->m:Ljava/lang/String;

    return-void

    :pswitch_5
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->n:Ljava/net/URI;

    return-void

    :pswitch_6
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->k:Ljava/net/URI;

    return-void

    :pswitch_7
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->j:Ljava/lang/String;

    return-void

    :pswitch_8
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->h:Ljava/lang/String;

    return-void

    :pswitch_9
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->i:Ljava/lang/String;

    return-void

    :pswitch_a
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->i(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->g:Ljava/net/URI;

    return-void

    :pswitch_b
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->f:Ljava/lang/String;

    return-void

    :pswitch_c
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->u:Ljava/lang/String;

    return-void

    :pswitch_d
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->t:Ljava/lang/String;

    return-void

    :pswitch_e
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->e:Ljava/lang/String;

    return-void

    :pswitch_f
    check-cast v0, Lorg/teleal/cling/binding/staging/MutableDevice;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lorg/teleal/cling/binding/staging/MutableDevice;->d:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;)Z
    .locals 0

    sget-object p0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d(Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;)V
    .locals 3

    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    iput-object v0, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->q:Ljava/util/ArrayList;

    new-instance v2, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;

    invoke-direct {v2, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$IconListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    :cond_0
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    check-cast v2, Lorg/teleal/cling/binding/staging/MutableDevice;

    iput-object v0, v2, Lorg/teleal/cling/binding/staging/MutableDevice;->r:Ljava/util/ArrayList;

    new-instance v2, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;

    invoke-direct {v2, v0, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$ServiceListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    :cond_1
    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Device$ELEMENT;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Lorg/teleal/cling/binding/staging/MutableDevice;

    iput-object p1, v1, Lorg/teleal/cling/binding/staging/MutableDevice;->s:Ljava/util/ArrayList;

    new-instance v0, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;

    invoke-direct {v0, p1, p0}, Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10DeviceDescriptorBinderSAXImpl$DeviceDescriptorHandler;)V

    :cond_2
    return-void
.end method
