package org.teleal.cling.support.contentdirectory;

import com.batch.android.s.b;
import defpackage.v7;
import defpackage.x1;
import java.io.StringReader;
import java.net.URI;
import java.util.ArrayList;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import org.teleal.cling.model.types.Datatype;
import org.teleal.cling.model.types.InvalidValueException;
import org.teleal.cling.support.model.DIDLAttribute;
import org.teleal.cling.support.model.DIDLContent;
import org.teleal.cling.support.model.DIDLObject;
import org.teleal.cling.support.model.DIDLObject$Property$DC$CONTRIBUTOR;
import org.teleal.cling.support.model.DIDLObject$Property$DC$DATE;
import org.teleal.cling.support.model.DIDLObject$Property$DC$DESCRIPTION;
import org.teleal.cling.support.model.DIDLObject$Property$DC$LANGUAGE;
import org.teleal.cling.support.model.DIDLObject$Property$DC$PUBLISHER;
import org.teleal.cling.support.model.DIDLObject$Property$DC$RELATION;
import org.teleal.cling.support.model.DIDLObject$Property$DC$RIGHTS;
import org.teleal.cling.support.model.DIDLObject$Property$DLNA$PROFILE_ID;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ACTOR;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ALBUM;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ALBUM_ART_URI;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ARTIST;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ARTIST_DISCO_URI;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$AUTHOR;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$CHANNEL_NAME;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$CHANNEL_NR;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$DIRECTOR;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$DVD_REGION_CODE;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$GENRE;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ICON;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$LONG_DESCRIPTION;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$LYRICS_URI;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$PLAYLIST;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$PRODUCER;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$RADIO_BAND;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$RADIO_CALL_SIGN;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$RADIO_STATION_ID;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$RATING;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$REGION;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$SCHEDULED_END_TIME;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$SCHEDULED_START_TIME;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_FREE;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_MEDIUM;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_TOTAL;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$STORAGE_USED;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$TOC;
import org.teleal.cling.support.model.DIDLObject$Property$UPNP$USER_ANNOTATION;
import org.teleal.cling.support.model.DescMeta;
import org.teleal.cling.support.model.Person;
import org.teleal.cling.support.model.PersonWithRole;
import org.teleal.cling.support.model.ProtocolInfo;
import org.teleal.cling.support.model.Res;
import org.teleal.cling.support.model.StorageMedium;
import org.teleal.cling.support.model.WriteStatus;
import org.teleal.cling.support.model.container.Album;
import org.teleal.cling.support.model.container.Container;
import org.teleal.cling.support.model.container.GenreContainer;
import org.teleal.cling.support.model.container.MovieGenre;
import org.teleal.cling.support.model.container.MusicAlbum;
import org.teleal.cling.support.model.container.MusicArtist;
import org.teleal.cling.support.model.container.MusicGenre;
import org.teleal.cling.support.model.container.PersonContainer;
import org.teleal.cling.support.model.container.PhotoAlbum;
import org.teleal.cling.support.model.container.PlaylistContainer;
import org.teleal.cling.support.model.container.StorageFolder;
import org.teleal.cling.support.model.container.StorageSystem;
import org.teleal.cling.support.model.container.StorageVolume;
import org.teleal.cling.support.model.item.Item;
import org.teleal.common.util.Exceptions;
import org.teleal.common.xml.ParserException;
import org.teleal.common.xml.SAXParser;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
public class DIDLParser extends SAXParser {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Logger f78559c = Logger.getLogger(DIDLParser.class.getName());

    public class ContainerHandler extends DIDLObjectHandler<Container> {
        public ContainerHandler(Container container, SAXParser.Handler handler) {
            super(container, handler);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler
        public final boolean a(String str, String str2) {
            if (!"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str) || !"container".equals(str2)) {
                return false;
            }
            Container container = (Container) this.f78653b;
            if (container.f78571c == null) {
                DIDLParser.f78559c.warning("In DIDL content, missing 'dc:title' element for container: " + container.f78569a);
            }
            if (container.g != null) {
                return true;
            }
            DIDLParser.f78559c.warning("In DIDL content, missing 'upnp:class' element for container: " + container.f78569a);
            return true;
        }

        @Override // org.teleal.cling.support.contentdirectory.DIDLParser.DIDLObjectHandler, org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            super.endElement(str, str2, str3);
            if ("urn:schemas-upnp-org:metadata-1-0/upnp/".equals(str)) {
                boolean zEquals = "searchClass".equals(str2);
                Object obj = this.f78653b;
                if (zEquals) {
                    ((Container) obj).m.add(new DIDLObject.Class(this.d.toString(), this.f78655e.getValue("name"), "true".equals(this.f78655e.getValue("includeDerived"))));
                } else if ("createClass".equals(str2)) {
                    ((Container) obj).l.add(new DIDLObject.Class(this.d.toString(), this.f78655e.getValue("name"), "true".equals(this.f78655e.getValue("includeDerived"))));
                }
            }
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            super.startElement(str, str2, str3, attributes);
            if ("urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str)) {
                boolean zEquals = str2.equals("item");
                Object obj = this.f78653b;
                DIDLParser dIDLParser = DIDLParser.this;
                if (zEquals) {
                    dIDLParser.getClass();
                    Item itemB = DIDLParser.b(attributes);
                    ((Container) obj).o.add(itemB);
                    dIDLParser.new ItemHandler(itemB, this);
                    return;
                }
                if (str2.equals("desc")) {
                    dIDLParser.getClass();
                    DescMeta descMetaA = DIDLParser.a(attributes);
                    ((Container) obj).f78576j.add(descMetaA);
                    new DescMetaHandler(dIDLParser, descMetaA, this);
                    return;
                }
                if (str2.equals("res")) {
                    dIDLParser.getClass();
                    Res resC = DIDLParser.c(attributes);
                    if (resC != null) {
                        ((Container) obj).f78574h.add(resC);
                        new ResHandler(dIDLParser, resC, this);
                    }
                }
            }
        }
    }

    public abstract class DIDLObjectHandler<I extends DIDLObject> extends SAXParser.Handler<I> {
        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            super.endElement(str, str2, str3);
            boolean zEquals = "http://purl.org/dc/elements/1.1/".equals(str);
            Object obj = this.f78653b;
            if (zEquals) {
                if ("title".equals(str2)) {
                    ((DIDLObject) obj).f78571c = this.d.toString();
                    return;
                }
                if ("creator".equals(str2)) {
                    ((DIDLObject) obj).d = this.d.toString();
                    return;
                }
                if ("description".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$DC$DESCRIPTION(this.d.toString()));
                    return;
                }
                if ("publisher".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$DC$PUBLISHER(new Person(this.d.toString())));
                    return;
                }
                if ("contributor".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$DC$CONTRIBUTOR(new Person(this.d.toString())));
                    return;
                }
                if ("date".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$DC$DATE(this.d.toString()));
                    return;
                }
                if ("language".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$DC$LANGUAGE(this.d.toString()));
                    return;
                } else if ("rights".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$DC$RIGHTS(this.d.toString()));
                    return;
                } else {
                    if ("relation".equals(str2)) {
                        ((DIDLObject) obj).a(new DIDLObject$Property$DC$RELATION(URI.create(this.d.toString())));
                        return;
                    }
                    return;
                }
            }
            if ("urn:schemas-upnp-org:metadata-1-0/upnp/".equals(str)) {
                if ("writeStatus".equals(str2)) {
                    try {
                        ((DIDLObject) obj).f78573f = WriteStatus.valueOf(this.d.toString());
                        return;
                    } catch (Exception unused) {
                        DIDLParser.f78559c.info("Ignoring invalid writeStatus value: ".concat(this.d.toString()));
                        return;
                    }
                }
                if ("class".equals(str2)) {
                    ((DIDLObject) obj).g = new DIDLObject.Class(this.d.toString(), this.f78655e.getValue("name"));
                    return;
                }
                if ("artist".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$ARTIST(new PersonWithRole(this.d.toString(), this.f78655e.getValue("role"))));
                    return;
                }
                if ("actor".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$ACTOR(new PersonWithRole(this.d.toString(), this.f78655e.getValue("role"))));
                    return;
                }
                if ("author".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$AUTHOR(new PersonWithRole(this.d.toString(), this.f78655e.getValue("role"))));
                    return;
                }
                if ("producer".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$PRODUCER(new Person(this.d.toString())));
                    return;
                }
                if ("director".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$DIRECTOR(new Person(this.d.toString())));
                    return;
                }
                if ("longDescription".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$LONG_DESCRIPTION(this.d.toString()));
                    return;
                }
                if ("storageUsed".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$STORAGE_USED(Long.valueOf(this.d.toString())));
                    return;
                }
                if ("storageTotal".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$STORAGE_TOTAL(Long.valueOf(this.d.toString())));
                    return;
                }
                if ("storageFree".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$STORAGE_FREE(Long.valueOf(this.d.toString())));
                    return;
                }
                if ("storageMaxPartition".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$STORAGE_MAX_PARTITION(Long.valueOf(this.d.toString())));
                    return;
                }
                if ("storageMedium".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$STORAGE_MEDIUM(StorageMedium.a(this.d.toString())));
                    return;
                }
                if ("genre".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$GENRE(this.d.toString()));
                    return;
                }
                if ("album".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$ALBUM(this.d.toString()));
                    return;
                }
                if ("playlist".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$PLAYLIST(this.d.toString()));
                    return;
                }
                if ("region".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$REGION(this.d.toString()));
                    return;
                }
                if ("rating".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$RATING(this.d.toString()));
                    return;
                }
                if ("toc".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$TOC(this.d.toString()));
                    return;
                }
                if ("albumArtURI".equals(str2)) {
                    DIDLObject$Property$UPNP$ALBUM_ART_URI dIDLObject$Property$UPNP$ALBUM_ART_URI = new DIDLObject$Property$UPNP$ALBUM_ART_URI(URI.create(this.d.toString()));
                    Attributes attributes = this.f78655e;
                    for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                        if ("profileID".equals(attributes.getLocalName(i2))) {
                            dIDLObject$Property$UPNP$ALBUM_ART_URI.f78581c.add(new DIDLObject$Property$DLNA$PROFILE_ID(new DIDLAttribute("urn:schemas-dlna-org:metadata-1-0/", "dlna", attributes.getValue(i2))));
                        }
                    }
                    ((DIDLObject) obj).a(dIDLObject$Property$UPNP$ALBUM_ART_URI);
                    return;
                }
                if ("artistDiscographyURI".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$ARTIST_DISCO_URI(URI.create(this.d.toString())));
                    return;
                }
                if ("lyricsURI".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$LYRICS_URI(URI.create(this.d.toString())));
                    return;
                }
                if ("icon".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$ICON(URI.create(this.d.toString())));
                    return;
                }
                if ("radioCallSign".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$RADIO_CALL_SIGN(this.d.toString()));
                    return;
                }
                if ("radioStationID".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$RADIO_STATION_ID(this.d.toString()));
                    return;
                }
                if ("radioBand".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$RADIO_BAND(this.d.toString()));
                    return;
                }
                if ("channelNr".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$CHANNEL_NR(Integer.valueOf(this.d.toString())));
                    return;
                }
                if ("channelName".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$CHANNEL_NAME(this.d.toString()));
                    return;
                }
                if ("scheduledStartTime".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$SCHEDULED_START_TIME(this.d.toString()));
                    return;
                }
                if ("scheduledEndTime".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$SCHEDULED_END_TIME(this.d.toString()));
                    return;
                }
                if ("DVDRegionCode".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$DVD_REGION_CODE(Integer.valueOf(this.d.toString())));
                } else if ("originalTrackNumber".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER(Integer.valueOf(this.d.toString())));
                } else if ("userAnnotation".equals(str2)) {
                    ((DIDLObject) obj).a(new DIDLObject$Property$UPNP$USER_ANNOTATION(this.d.toString()));
                }
            }
        }
    }

    public class DescMetaHandler extends SAXParser.Handler<DescMeta> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Element f78561f;

        public DescMetaHandler(DIDLParser dIDLParser, DescMeta descMeta, SAXParser.Handler handler) {
            super(descMeta, handler);
            descMeta.getClass();
            try {
                DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
                documentBuilderFactoryNewInstance.setNamespaceAware(true);
                Document documentNewDocument = documentBuilderFactoryNewInstance.newDocumentBuilder().newDocument();
                documentNewDocument.appendChild(documentNewDocument.createElementNS("urn:teleal-org:cling:support:content-directory-desc-1-0", "desc-wrapper"));
                descMeta.f78582a = documentNewDocument;
                this.f78561f = ((Document) ((DescMeta) this.f78653b).f78582a).getDocumentElement();
            } catch (Exception e2) {
                x1.m(e2);
                throw null;
            }
        }

        @Override // org.teleal.common.xml.SAXParser.Handler
        public final boolean a(String str, String str2) {
            return "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str) && "desc".equals(str2);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            super.endElement(str, str2, str3);
            if (a(str, str2)) {
                return;
            }
            if (this.d.toString().length() > 0 && !this.d.toString().matches("[\\t\\n\\x0B\\f\\r\\s]+")) {
                this.f78561f.appendChild(((Document) ((DescMeta) this.f78653b).f78582a).createTextNode(this.d.toString()));
            }
            this.f78561f = (Element) this.f78561f.getParentNode();
            this.d = new StringBuilder();
            this.f78655e = null;
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            super.startElement(str, str2, str3, attributes);
            Element elementCreateElementNS = ((Document) ((DescMeta) this.f78653b).f78582a).createElementNS(str, str3);
            for (int i2 = 0; i2 < attributes.getLength(); i2++) {
                elementCreateElementNS.setAttributeNS(attributes.getURI(i2), attributes.getQName(i2), attributes.getValue(i2));
            }
            this.f78561f.appendChild(elementCreateElementNS);
            this.f78561f = elementCreateElementNS;
        }
    }

    public class ItemHandler extends DIDLObjectHandler<Item> {
        public ItemHandler(Item item, SAXParser.Handler handler) {
            super(item, handler);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler
        public final boolean a(String str, String str2) {
            if (!"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str) || !"item".equals(str2)) {
                return false;
            }
            Item item = (Item) this.f78653b;
            if (item.f78571c == null) {
                DIDLParser.f78559c.warning("In DIDL content, missing 'dc:title' element for item: " + item.f78569a);
            }
            if (item.g != null) {
                return true;
            }
            DIDLParser.f78559c.warning("In DIDL content, missing 'upnp:class' element for item: " + item.f78569a);
            return true;
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            super.startElement(str, str2, str3, attributes);
            if ("urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str)) {
                boolean zEquals = str2.equals("res");
                Object obj = this.f78653b;
                DIDLParser dIDLParser = DIDLParser.this;
                if (zEquals) {
                    dIDLParser.getClass();
                    Res resC = DIDLParser.c(attributes);
                    if (resC != null) {
                        ((Item) obj).f78574h.add(resC);
                        new ResHandler(dIDLParser, resC, this);
                        return;
                    }
                    return;
                }
                if (str2.equals("desc")) {
                    dIDLParser.getClass();
                    DescMeta descMetaA = DIDLParser.a(attributes);
                    ((Item) obj).f78576j.add(descMetaA);
                    new DescMetaHandler(dIDLParser, descMetaA, this);
                }
            }
        }
    }

    public class ResHandler extends SAXParser.Handler<Res> {
        public ResHandler(DIDLParser dIDLParser, Res res, SAXParser.Handler handler) {
            super(res, handler);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler
        public final boolean a(String str, String str2) {
            return "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str) && "res".equals(str2);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            super.endElement(str, str2, str3);
            ((Res) this.f78653b).f78598b = this.d.toString();
        }
    }

    public class RootHandler extends SAXParser.Handler<DIDLContent> {
        public RootHandler(DIDLContent dIDLContent, DIDLParser dIDLParser) {
            super(dIDLContent, dIDLParser);
        }

        @Override // org.teleal.common.xml.SAXParser.Handler
        public final boolean a(String str, String str2) {
            Container storageFolder;
            if (!"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str) || !"DIDL-Lite".equals(str2)) {
                return false;
            }
            DIDLContent dIDLContent = (DIDLContent) this.f78653b;
            dIDLContent.f78567b = DIDLContent.a(dIDLContent.f78567b);
            ArrayList<Container> arrayList = dIDLContent.f78566a;
            ArrayList arrayList2 = new ArrayList();
            for (Container container : arrayList) {
                String str3 = container.g.f78577a;
                if (Album.p.f78577a.equals(str3)) {
                    storageFolder = new Album(container);
                } else if (MusicAlbum.q.f78577a.equals(str3)) {
                    storageFolder = new MusicAlbum(container);
                } else if (PhotoAlbum.q.f78577a.equals(str3)) {
                    storageFolder = new PhotoAlbum(container);
                } else if (GenreContainer.p.f78577a.equals(str3)) {
                    storageFolder = new GenreContainer(container);
                } else if (MusicGenre.q.f78577a.equals(str3)) {
                    storageFolder = new MusicGenre(container);
                } else if (MovieGenre.q.f78577a.equals(str3)) {
                    storageFolder = new MovieGenre(container);
                } else if (PlaylistContainer.p.f78577a.equals(str3)) {
                    storageFolder = new PlaylistContainer(container);
                } else if (PersonContainer.p.f78577a.equals(str3)) {
                    storageFolder = new PersonContainer(container);
                } else if (MusicArtist.q.f78577a.equals(str3)) {
                    storageFolder = new MusicArtist(container);
                } else if (StorageSystem.p.f78577a.equals(str3)) {
                    storageFolder = new StorageSystem(container);
                } else if (StorageVolume.p.f78577a.equals(str3)) {
                    storageFolder = new StorageVolume(container);
                } else {
                    storageFolder = StorageFolder.p.f78577a.equals(str3) ? new StorageFolder(container) : container;
                }
                storageFolder.o = DIDLContent.a(container.o);
                arrayList2.add(storageFolder);
            }
            dIDLContent.f78566a = arrayList2;
            return true;
        }

        @Override // org.teleal.common.xml.SAXParser.Handler, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) {
            super.startElement(str, str2, str3, attributes);
            if ("urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/".equals(str)) {
                boolean zEquals = str2.equals("container");
                Object obj = this.f78653b;
                DIDLParser dIDLParser = DIDLParser.this;
                if (!zEquals) {
                    if (str2.equals("item")) {
                        Item itemB = DIDLParser.b(attributes);
                        ((DIDLContent) obj).f78567b.add(itemB);
                        dIDLParser.new ItemHandler(itemB, this);
                        return;
                    } else {
                        if (str2.equals("desc")) {
                            DescMeta descMetaA = DIDLParser.a(attributes);
                            ((DIDLContent) obj).f78568c.add(descMetaA);
                            new DescMetaHandler(dIDLParser, descMetaA, this);
                            return;
                        }
                        return;
                    }
                }
                Container container = new Container();
                container.f78569a = attributes.getValue(b.a.f24015b);
                container.f78570b = attributes.getValue("parentID");
                if (attributes.getValue("childCount") != null) {
                    container.f78601k = Integer.valueOf(attributes.getValue("childCount"));
                }
                try {
                    Datatype.Builtin builtin = Datatype.Builtin.BOOLEAN;
                    Boolean bool = (Boolean) builtin.b().e(attributes.getValue("restricted"));
                    if (bool != null) {
                        container.f78572e = bool.booleanValue();
                    }
                } catch (Exception unused) {
                }
                ((DIDLContent) obj).f78566a.add(container);
                dIDLParser.new ContainerHandler(container, this);
            }
        }
    }

    public static DescMeta a(Attributes attributes) {
        DescMeta descMeta = new DescMeta();
        attributes.getValue(b.a.f24015b);
        if (attributes.getValue("type") != null) {
            attributes.getValue("type");
        }
        if (attributes.getValue("nameSpace") != null) {
            URI.create(attributes.getValue("nameSpace"));
        }
        return descMeta;
    }

    public static Item b(Attributes attributes) {
        Item item = new Item();
        item.f78569a = attributes.getValue(b.a.f24015b);
        item.f78570b = attributes.getValue("parentID");
        try {
            Boolean bool = (Boolean) Datatype.Builtin.BOOLEAN.b().e(attributes.getValue("restricted"));
            if (bool != null) {
                item.f78572e = bool.booleanValue();
            }
        } catch (Exception unused) {
        }
        if (attributes.getValue("refID") != null) {
            attributes.getValue("refID");
        }
        return item;
    }

    public static Res c(Attributes attributes) {
        Res res = new Res();
        if (attributes.getValue("importUri") != null) {
            URI.create(attributes.getValue("importUri"));
        }
        try {
            new ProtocolInfo(attributes.getValue("protocolInfo"));
            if (attributes.getValue("size") != null) {
                Long.valueOf(attributes.getValue("size"));
            }
            if (attributes.getValue("duration") != null) {
                res.f78597a = attributes.getValue("duration");
            }
            if (attributes.getValue("bitrate") != null) {
                Long.valueOf(attributes.getValue("bitrate"));
            }
            if (attributes.getValue("sampleFrequency") != null) {
                Long.valueOf(attributes.getValue("sampleFrequency"));
            }
            if (attributes.getValue("bitsPerSample") != null) {
                Long.valueOf(attributes.getValue("bitsPerSample"));
            }
            if (attributes.getValue("nrAudioChannels") != null) {
                Long.valueOf(attributes.getValue("nrAudioChannels"));
            }
            if (attributes.getValue("colorDepth") != null) {
                Long.valueOf(attributes.getValue("colorDepth"));
            }
            if (attributes.getValue("protection") != null) {
                attributes.getValue("protection");
            }
            if (attributes.getValue("resolution") != null) {
                attributes.getValue("resolution");
            }
            return res;
        } catch (InvalidValueException e2) {
            f78559c.warning("In DIDL content, invalid resource protocol info: " + Exceptions.a(e2));
            return null;
        }
    }

    public final DIDLContent d(String str) throws ParserException {
        if (str == null || str.length() == 0) {
            v7.h("Null or empty XML");
            return null;
        }
        DIDLContent dIDLContent = new DIDLContent();
        new RootHandler(dIDLContent, this);
        f78559c.fine("Parsing DIDL XML content");
        try {
            this.f78651a.parse(new InputSource(new StringReader(str)));
            return dIDLContent;
        } catch (Exception e2) {
            throw new ParserException(e2);
        }
    }
}
