.class public Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;
.super Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateVariableHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler<",
        "Lorg/teleal/cling/binding/staging/MutableStateVariable;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;->stateVariable:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    sput-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/binding/staging/MutableStateVariable;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;-><init>(Ljava/lang/Object;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    return-void
.end method


# virtual methods
.method public final b(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)V
    .locals 2

    sget-object v0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;->c:Ljava/lang/String;

    return-void

    :cond_1
    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/teleal/cling/model/types/Datatype$Builtin;->a(Ljava/lang/String;)Lorg/teleal/cling/model/types/Datatype$Builtin;

    move-result-object p1

    check-cast v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/teleal/cling/model/types/Datatype$Builtin;->b()Lorg/teleal/cling/model/types/Datatype;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/teleal/cling/model/types/CustomDatatype;

    invoke-direct {p1, p0}, Lorg/teleal/cling/model/types/CustomDatatype;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    iput-object p0, v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;->b:Lorg/teleal/cling/model/types/Datatype;

    return-void

    :cond_3
    check-cast v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    iget-object p0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;->a:Ljava/lang/String;

    return-void
.end method

.method public final c(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;)Z
    .locals 0

    sget-object p0, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$StateVariableHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d(Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;Lorg/xml/sax/Attributes;)V
    .locals 2

    sget-object p2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lorg/teleal/common/xml/SAXParser$Handler;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    check-cast v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    iput-object p2, v1, Lorg/teleal/cling/binding/staging/MutableStateVariable;->d:Ljava/util/ArrayList;

    new-instance v1, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;

    invoke-direct {v1, p2, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueListHandler;-><init>(Ljava/util/List;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    :cond_0
    sget-object p2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;->f:Lorg/teleal/cling/binding/xml/Descriptor$Service$ELEMENT;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    invoke-direct {p1}, Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;-><init>()V

    check-cast v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;

    iput-object p1, v0, Lorg/teleal/cling/binding/staging/MutableStateVariable;->e:Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;

    new-instance p2, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;

    invoke-direct {p2, p1, p0}, Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$AllowedValueRangeHandler;-><init>(Lorg/teleal/cling/binding/staging/MutableAllowedValueRange;Lorg/teleal/cling/binding/xml/UDA10ServiceDescriptorBinderSAXImpl$ServiceDescriptorHandler;)V

    :cond_1
    return-void
.end method
