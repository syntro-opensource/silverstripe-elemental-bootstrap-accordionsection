<% include Syntro\SilverStripeElementalBaseitems\ContentBlock %>

<div class="row justify-content-center text-center">
    <div class="col-12 {$ElementName}__accordionholder">
        <div class="{$ElementName}__accordion accordion shadow" id="accordion-$ID">
            <% loop AccordionPanels %>
                <div class="card {$ElementName}__accordionentry">
                    <div class="{$ElementName}__accordionheader card-header" id="accordion-{$Up.ID}-button-$ID">
                        <h3 class="mb-0">
                        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#accordion-{$Up.ID}-panel-$ID" aria-expanded="false" aria-controls="accordion-{$Up.ID}-panel-$ID">$Title</button>
                        </h3>
                    </div>
                    <div class="{$ElementName}__accordion-inner collapse" id="accordion-{$Up.ID}-panel-$ID" aria-labelledby="accordion-{$Up.ID}-button-$ID" data-parent="#accordion-$Up.ID">
                        <div class="card-body text-left text-dark">
                            <div class="row align-items-center">
                                <% if Image %>
                                    <div class="{$ElementName}__accordion-image col-12 col-md-6 col-lg-4 col-xl-3 mb-3 mb-md-0">
                                        <img src="$Image.Fit(800,800).URL" alt="$Title" class="img-fluid rounded shadow">
                                    </div>
                                <% end_if %>
                                <div class="col {$ElementName}__accordion-content">
                                    $Content
                                    <% if CTALink %>
                                        <% with CTALink %>
                                            <a {$IDAttr} class="{$ElementName}__accordion-link mx-1 text-$Up.LinkColor" href="{$LinkURL}"{$TargetAttr}>
                                                {$Title}
                                            </a>
                                        <% end_with %>
                                    <% end_if %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <% end_loop %>
        </div>
    </div>
</div>
