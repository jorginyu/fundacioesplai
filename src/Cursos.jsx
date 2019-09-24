import React from 'react';
import { Spinner, UncontrolledCollapse, Alert,   } from 'reactstrap';

export default class CursosMapa extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        return (
          <div>
            <Spinner id="toggler" type="grow" color="success" />
            <UncontrolledCollapse toggler="#toggler">
              <Alert color="success">
                <h4 className="alert-heading">Well done!</h4>
                <p>
                  Aww yeah, you successfully read this important alert message.
                  This example text is going to run a bit longer so that you can
                  see how spacing within an alert works with this kind of
                  content.
                </p>
                <hr />
                <p className="mb-0">
                  Whenever you need to, be sure to use margin utilities to keep
                  things nice and tidy.
                </p>
              </Alert>
            </UncontrolledCollapse>
          </div>
        );
    }
}