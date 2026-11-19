package org.teleal.cling.binding.xml;

import defpackage.a;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.logging.Logger;
import org.teleal.cling.binding.staging.MutableAction;
import org.teleal.cling.binding.staging.MutableActionArgument;
import org.teleal.cling.binding.staging.MutableAllowedValueRange;
import org.teleal.cling.binding.staging.MutableService;
import org.teleal.cling.binding.staging.MutableStateVariable;
import org.teleal.cling.model.ValidationException;
import org.teleal.cling.model.meta.ActionArgument;
import org.teleal.cling.model.meta.RemoteService;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.meta.StateVariableEventDetails;
import org.teleal.cling.model.types.CustomDatatype;
import org.teleal.cling.model.types.Datatype;
import org.teleal.common.xml.ParserException;
import org.teleal.common.xml.SAXParser;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
public class UDA10ServiceDescriptorBinderSAXImpl extends UDA10ServiceDescriptorBinderImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f78357b = Logger.getLogger(ServiceDescriptorBinder.class.getName());

    /* JADX INFO: renamed from: org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f78358a;

        static {
            int[] iArr = new int[Descriptor$Service.ELEMENT.values().length];
            f78358a = iArr;
            try {
                iArr[Descriptor$Service.ELEMENT.name.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.direction.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.relatedStateVariable.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.retval.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.dataType.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.defaultValue.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.allowedValue.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.minimum.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.maximum.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f78358a[Descriptor$Service.ELEMENT.step.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static class ActionArgumentHandler extends ServiceDescriptorHandler<MutableActionArgument> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78359f = Descriptor$Service.ELEMENT.argument;

        public ActionArgumentHandler(MutableActionArgument mutableActionArgument, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableActionArgument, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void b(Descriptor$Service.ELEMENT element) {
            int i2 = AnonymousClass1.f78358a[element.ordinal()];
            Object obj = this.f78653b;
            if (i2 == 1) {
                ((MutableActionArgument) obj).f78315a = this.d.toString();
                return;
            }
            if (i2 == 2) {
                ((MutableActionArgument) obj).f78317c = ActionArgument.Direction.valueOf(this.d.toString().toUpperCase(Locale.ENGLISH));
            } else if (i2 == 3) {
                ((MutableActionArgument) obj).f78316b = this.d.toString();
            } else {
                if (i2 != 4) {
                    return;
                }
                ((MutableActionArgument) obj).d = true;
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78359f);
        }
    }

    public static class ActionArgumentListHandler extends ServiceDescriptorHandler<List<MutableActionArgument>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78360f = Descriptor$Service.ELEMENT.argumentList;

        public ActionArgumentListHandler(List<MutableActionArgument> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78360f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void d(Descriptor$Service.ELEMENT element, Attributes attributes) {
            if (element.equals(ActionArgumentHandler.f78359f)) {
                MutableActionArgument mutableActionArgument = new MutableActionArgument();
                ((List) this.f78653b).add(mutableActionArgument);
                new ActionArgumentHandler(mutableActionArgument, this);
            }
        }
    }

    public static class ActionHandler extends ServiceDescriptorHandler<MutableAction> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78361f = Descriptor$Service.ELEMENT.action;

        public ActionHandler(MutableAction mutableAction, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableAction, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void b(Descriptor$Service.ELEMENT element) {
            if (AnonymousClass1.f78358a[element.ordinal()] != 1) {
                return;
            }
            ((MutableAction) this.f78653b).f78313a = this.d.toString();
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78361f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void d(Descriptor$Service.ELEMENT element, Attributes attributes) {
            if (element.equals(ActionArgumentListHandler.f78360f)) {
                ArrayList arrayList = new ArrayList();
                ((MutableAction) this.f78653b).f78314b = arrayList;
                new ActionArgumentListHandler(arrayList, this);
            }
        }
    }

    public static class ActionListHandler extends ServiceDescriptorHandler<List<MutableAction>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78362f = Descriptor$Service.ELEMENT.actionList;

        public ActionListHandler(List<MutableAction> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78362f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void d(Descriptor$Service.ELEMENT element, Attributes attributes) {
            if (element.equals(ActionHandler.f78361f)) {
                MutableAction mutableAction = new MutableAction();
                ((List) this.f78653b).add(mutableAction);
                new ActionHandler(mutableAction, this);
            }
        }
    }

    public static class AllowedValueListHandler extends ServiceDescriptorHandler<List<String>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78363f = Descriptor$Service.ELEMENT.allowedValueList;

        public AllowedValueListHandler(List<String> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void b(Descriptor$Service.ELEMENT element) {
            if (AnonymousClass1.f78358a[element.ordinal()] != 7) {
                return;
            }
            ((List) this.f78653b).add(this.d.toString());
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78363f);
        }
    }

    public static class AllowedValueRangeHandler extends ServiceDescriptorHandler<MutableAllowedValueRange> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78364f = Descriptor$Service.ELEMENT.allowedValueRange;

        public AllowedValueRangeHandler(MutableAllowedValueRange mutableAllowedValueRange, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableAllowedValueRange, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void b(Descriptor$Service.ELEMENT element) {
            try {
                int i2 = AnonymousClass1.f78358a[element.ordinal()];
                Object obj = this.f78653b;
                switch (i2) {
                    case 8:
                        ((MutableAllowedValueRange) obj).f78318a = Long.valueOf(this.d.toString());
                        break;
                    case 9:
                        ((MutableAllowedValueRange) obj).f78319b = Long.valueOf(this.d.toString());
                        break;
                    case 10:
                        ((MutableAllowedValueRange) obj).f78320c = Long.valueOf(this.d.toString());
                        break;
                }
            } catch (Exception unused) {
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78364f);
        }
    }

    public static class RootHandler extends ServiceDescriptorHandler<MutableService> {
        public RootHandler(MutableService mutableService, SAXParser sAXParser) {
            super(mutableService, sAXParser);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void d(Descriptor$Service.ELEMENT element, Attributes attributes) {
            boolean zEquals = element.equals(ActionListHandler.f78362f);
            Object obj = this.f78653b;
            if (zEquals) {
                ArrayList arrayList = new ArrayList();
                ((MutableService) obj).f78338f = arrayList;
                new ActionListHandler(arrayList, this);
            }
            if (element.equals(StateVariableListHandler.f78366f)) {
                ArrayList arrayList2 = new ArrayList();
                ((MutableService) obj).g = arrayList2;
                new StateVariableListHandler(arrayList2, this);
            }
        }
    }

    public static class StateVariableHandler extends ServiceDescriptorHandler<MutableStateVariable> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78365f = Descriptor$Service.ELEMENT.stateVariable;

        public StateVariableHandler(MutableStateVariable mutableStateVariable, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(mutableStateVariable, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void b(Descriptor$Service.ELEMENT element) {
            int i2 = AnonymousClass1.f78358a[element.ordinal()];
            Object obj = this.f78653b;
            if (i2 == 1) {
                ((MutableStateVariable) obj).f78339a = this.d.toString();
                return;
            }
            if (i2 != 5) {
                if (i2 != 6) {
                    return;
                }
                ((MutableStateVariable) obj).f78341c = this.d.toString();
            } else {
                String string = this.d.toString();
                Datatype.Builtin builtinA = Datatype.Builtin.a(string);
                ((MutableStateVariable) obj).f78340b = builtinA != null ? builtinA.b() : new CustomDatatype(string);
            }
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78365f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void d(Descriptor$Service.ELEMENT element, Attributes attributes) {
            boolean zEquals = element.equals(AllowedValueListHandler.f78363f);
            Object obj = this.f78653b;
            if (zEquals) {
                ArrayList arrayList = new ArrayList();
                ((MutableStateVariable) obj).d = arrayList;
                new AllowedValueListHandler(arrayList, this);
            }
            if (element.equals(AllowedValueRangeHandler.f78364f)) {
                MutableAllowedValueRange mutableAllowedValueRange = new MutableAllowedValueRange();
                ((MutableStateVariable) obj).f78342e = mutableAllowedValueRange;
                new AllowedValueRangeHandler(mutableAllowedValueRange, this);
            }
        }
    }

    public static class StateVariableListHandler extends ServiceDescriptorHandler<List<MutableStateVariable>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Descriptor$Service.ELEMENT f78366f = Descriptor$Service.ELEMENT.serviceStateTable;

        public StateVariableListHandler(List<MutableStateVariable> list, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(list, serviceDescriptorHandler);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final boolean c(Descriptor$Service.ELEMENT element) {
            return element.equals(f78366f);
        }

        @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderSAXImpl.ServiceDescriptorHandler
        public final void d(Descriptor$Service.ELEMENT element, Attributes attributes) {
            if (element.equals(StateVariableHandler.f78365f)) {
                MutableStateVariable mutableStateVariable = new MutableStateVariable();
                String value = attributes.getValue(Descriptor$Service.ATTRIBUTE.sendEvents.toString());
                mutableStateVariable.f78343f = new StateVariableEventDetails(value != null && value.toUpperCase().equals("YES"));
                ((List) this.f78653b).add(mutableStateVariable);
                new StateVariableHandler(mutableStateVariable, this);
            }
        }
    }

    @Override // org.teleal.cling.binding.xml.UDA10ServiceDescriptorBinderImpl, org.teleal.cling.binding.xml.ServiceDescriptorBinder
    public final Service a(RemoteService remoteService, String str) throws ValidationException, DescriptorBindingException {
        if (str.length() == 0) {
            return null;
        }
        try {
            f78357b.fine("Reading service from XML descriptor");
            SAXParser sAXParser = new SAXParser();
            MutableService mutableService = new MutableService();
            mutableService.f78335b = remoteService.f78480b;
            mutableService.f78334a = remoteService.f78479a;
            mutableService.d = remoteService.g;
            mutableService.f78337e = remoteService.f78478h;
            mutableService.f78336c = remoteService.f78477f;
            new RootHandler(mutableService, sAXParser);
            try {
                sAXParser.f78651a.parse(new InputSource(new StringReader(str.trim())));
                return mutableService.a(remoteService.f78482e);
            } catch (Exception e2) {
                throw new ParserException(e2);
            }
        } catch (ValidationException e3) {
            throw e3;
        } catch (Exception e4) {
            throw new DescriptorBindingException(a.j(e4, new StringBuilder("Could not parse service descriptor: ")), e4);
        }
    }

    public static class ServiceDescriptorHandler<I> extends SAXParser.Handler<I> {
        public ServiceDescriptorHandler(I i2) {
            super(i2);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler
        public final boolean a(String str, String str2) {
            Descriptor$Service.ELEMENT elementValueOf;
            try {
                elementValueOf = Descriptor$Service.ELEMENT.valueOf(str2);
            } catch (IllegalArgumentException unused) {
                elementValueOf = null;
            }
            return elementValueOf != null && c(elementValueOf);
        }

        public void b(Descriptor$Service.ELEMENT element) {
        }

        public boolean c(Descriptor$Service.ELEMENT element) {
            return false;
        }

        public void d(Descriptor$Service.ELEMENT element, Attributes attributes) {
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            Descriptor$Service.ELEMENT elementValueOf;
            super.endElement(str, str2, str3);
            try {
                elementValueOf = Descriptor$Service.ELEMENT.valueOf(str2);
            } catch (IllegalArgumentException unused) {
                elementValueOf = null;
            }
            if (elementValueOf == null) {
                return;
            }
            b(elementValueOf);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            Descriptor$Service.ELEMENT elementValueOf;
            super.startElement(str, str2, str3, attributes);
            try {
                elementValueOf = Descriptor$Service.ELEMENT.valueOf(str2);
            } catch (IllegalArgumentException unused) {
                elementValueOf = null;
            }
            if (elementValueOf == null) {
                return;
            }
            d(elementValueOf, attributes);
        }

        public ServiceDescriptorHandler(I i2, SAXParser sAXParser) {
            super(i2, sAXParser);
        }

        public ServiceDescriptorHandler(I i2, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(i2, serviceDescriptorHandler);
        }

        public ServiceDescriptorHandler(I i2, SAXParser sAXParser, ServiceDescriptorHandler serviceDescriptorHandler) {
            super(i2, sAXParser, serviceDescriptorHandler);
        }
    }
}
